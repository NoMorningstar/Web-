package com.binggr.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.util.HashMap;
import java.util.Map;

/**
 * 文件上传相关
 * 用于 自定义和handyeditor的图片上传
 * @author: bing
 * @date: 2020/9/17 10:05
 */
@Controller
@RequestMapping("/file")
public class FileUpController {

    @RequestMapping("/up")
    @ResponseBody
    public String fileUp(@RequestParam("file")CommonsMultipartFile file, HttpServletRequest request)
            throws Exception {
        //获取文件名
        String uploadFileName = file.getOriginalFilename();

        System.out.println("上传文件名："+uploadFileName);

        //上传路径保存设置
        String path = request.getSession().getServletContext().getRealPath("/upload");

        //如果路径不存在，创建一个
        File realPath = new File(path);
        if(!realPath.exists()){
            realPath.mkdir();
        }
        System.out.println("上传保存地址："+realPath);

        InputStream is = file.getInputStream();
        OutputStream os = new FileOutputStream(new File(realPath,uploadFileName));

        //读取写出
        int len = 0;
        byte[] buffer = new byte[1024];
        while((len=is.read(buffer))!= -1){
            os.write(buffer);
            os.flush();
        }
        System.out.println("文件上传成功！");
        is.close();
        os.close();
        String photoPath = "http://localhost:8081"+request.getContextPath()+"/upload/"+uploadFileName;
        System.out.println(photoPath);
        return photoPath;
    }

    @RequestMapping("/up1")
    @ResponseBody
    public Map<String,Object> smallPhotoUp(@RequestParam("file")CommonsMultipartFile file, HttpServletRequest request)
            throws Exception {
        //获取文件名
        String uploadFileName = file.getOriginalFilename();

        System.out.println("上传文件名："+uploadFileName);

        //上传路径保存设置
        String path = request.getSession().getServletContext().getRealPath("/upload");

        //如果路径不存在，创建一个
        File realPath = new File(path);
        if(!realPath.exists()){
            realPath.mkdir();
        }
        System.out.println("上传保存地址："+realPath);

        InputStream is = file.getInputStream();
        OutputStream os = new FileOutputStream(new File(realPath,uploadFileName));

        //读取写出
        int len = 0;
        byte[] buffer = new byte[1024];
        while((len=is.read(buffer))!= -1){
            os.write(buffer);
            os.flush();
        }
        System.out.println("文件上传成功！");
        is.close();
        os.close();
        String photoPath = "http://localhost:8081"+request.getContextPath()+"/upload/"+uploadFileName;
        System.out.println(photoPath);

        Map<String,Object> map = new HashMap<String,Object>();
        map.put("addr",photoPath);
        return map;
    }

}
