package com.binggr.lucene;

import com.binggr.model.Blog;
import com.binggr.util.DateUtil;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.cn.smart.SmartChineseAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.StringField;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.*;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.*;
import org.apache.lucene.search.highlight.*;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;

import java.io.StringReader;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

/**
 * @author: bing
 * @date: 2020/9/24 14:56
 * 使用lucene对博客增删改查
 */
public class BlogIndex {
    private Directory dir = null;
    private String lucenePath = "D://lucenr";
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /**
     * 获取luene的写入方法
     */
    private IndexWriter getWriter() throws Exception {
       dir = FSDirectory.open(Paths.get(lucenePath,new String[0]));
        SmartChineseAnalyzer analyzer = new SmartChineseAnalyzer();
        IndexWriterConfig iwc = new IndexWriterConfig(analyzer);
       IndexWriter writer = new IndexWriter(dir,iwc);
       return writer;
    }

    /**
     * 增加索引
     */
    public void addIndex(Blog blog) throws Exception {
        IndexWriter writer = getWriter();
        Document doc = new Document();
        doc.add(new StringField("id",String.valueOf(blog.getId()), Field.Store.YES));
        doc.add(new TextField("title",blog.getTitle(), Field.Store.YES));
        doc.add(new StringField("releasedate", DateUtil.formatDate(new Date(),"yyyy-MM-dd HH:mm:ss"), Field.Store.YES));
        doc.add(new TextField("content",blog.getContent(), Field.Store.YES));
        doc.add(new TextField("keyword",blog.getKeyword(), Field.Store.YES));
        writer.addDocument(doc);
        writer.close();
    }

    /**
     * 更新索引
     */
    public void updateIndex(Blog blog) throws Exception {
        IndexWriter writer = getWriter();
        Document doc = new Document();
        doc.add(new StringField("id",String.valueOf(blog.getId()), Field.Store.YES));
        doc.add(new TextField("title",blog.getTitle(), Field.Store.YES));
        doc.add(new StringField("releasedate", DateUtil.formatDate(new Date(),"yyyy-MM-dd HH:mm:ss"), Field.Store.YES));
        doc.add(new TextField("content",blog.getContent(), Field.Store.YES));
        doc.add(new TextField("keyword",blog.getKeyword(), Field.Store.YES));
        writer.updateDocument(new Term("id", String.valueOf(blog.getId())),doc);
        writer.close();
    }

    /**
     * 删除索引
     */
    public void deleteIndex(String blogId) throws Exception{
        IndexWriter writer = getWriter();
        writer.deleteDocuments(new Term[] {new Term("id",blogId)});
        writer.forceMergeDeletes();
        writer.commit();
        writer.close();
    }

    /**
     * 搜索索引
     */
    public List<Blog> searchBlog(String q) throws Exception {
        List<Blog> blogList = new LinkedList<>();

        dir = FSDirectory.open(Paths.get(lucenePath, new String[0]));
        //获取Reader
        IndexReader reader = DirectoryReader.open(dir);
        //获取流
        IndexSearcher is = new IndexSearcher(reader);
        //放入查询条件
        BooleanQuery.Builder builder = new BooleanQuery.Builder();
        SmartChineseAnalyzer analyzer = new SmartChineseAnalyzer();
        QueryParser parser = new QueryParser("title",analyzer);
        Query query = parser.parse(q);
        QueryParser parser1 = new QueryParser("content",analyzer);
        Query query1 = parser1.parse(q);
        QueryParser parser2 = new QueryParser("keyword",analyzer);
        Query query2 = parser2.parse(q);

        builder.add(query, BooleanClause.Occur.SHOULD);
        builder.add(query1, BooleanClause.Occur.SHOULD);
        builder.add(query2, BooleanClause.Occur.SHOULD);

        //最多返回100条数据
        TopDocs hits = is.search(builder.build(),100);

        //高亮关键字
        QueryScorer scorer = new QueryScorer(query);
        Fragmenter fragmenter = new SimpleSpanFragmenter(scorer);
        SimpleHTMLFormatter simpleHTMLFormatter = new SimpleHTMLFormatter("<b><font color='red'>","</font></b>");
        Highlighter highlighter = new Highlighter(simpleHTMLFormatter,scorer);
        highlighter.setTextFragmenter(fragmenter);

        //遍历查询结果，放入blogList
        for (ScoreDoc scoreDoc:hits.scoreDocs){
            Document doc = is.doc(scoreDoc.doc);
            Blog blog = new Blog();

            blog.setId(Integer.parseInt(doc.get("id")));
            blog.setReleasedate(simpleDateFormat.parse(doc.get("releasedate")));
            String title = doc.get("title");
            String content = doc.get("content");
            String keyword = doc.get("keyword");

            if(title!=null){
                TokenStream tokenStream = analyzer.tokenStream("title",new StringReader(title));
                String hTitle = highlighter.getBestFragment(tokenStream,title);
                if(hTitle==null){
                    blog.setTitle(title);
                }else {
                    blog.setTitle(hTitle);
                }

            }

            if(content!=null){
                TokenStream tokenStream = analyzer.tokenStream("content",new StringReader(content));
                String hContent = highlighter.getBestFragment(tokenStream,content);
                if(hContent==null){
                    if(content.length()<=200){
                        blog.setContent(content);
                    }else{
                        blog.setContent(content.substring(0,200));
                    }
                }else {
                    blog.setContent(hContent);
                }
            }

            if(keyword!=null){
                TokenStream tokenStream = analyzer.tokenStream("keyword",new StringReader(keyword));
                String hKeyword = highlighter.getBestFragment(tokenStream,keyword);
                if(hKeyword==null){
                    blog.setKeyword(keyword);
                }else {
                    blog.setKeyword(hKeyword);
                }
            }

            blogList.add(blog);
        }
        return blogList;
    }

}
