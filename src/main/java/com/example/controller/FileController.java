package com.example.controller;

import cn.hutool.core.io.FileUtil;
import com.example.common.Result;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;

@RestController
@RequestMapping("/files")
public class FileController {
    @Value("${ip}")
    private  String ip;
    @Value("${server.port}")private
    String port;

    private static  final String ROOT_PATH = System.getProperty("user.dir") + "/files/";
    /*
    文件上传
     */
    @PostMapping("/upload")
   public Result upload(MultipartFile file) throws IOException {
        String originalFilename = file.getOriginalFilename();//获取原始的文件 aaa.png aaa.png
        Long flag = System.currentTimeMillis();
        String fileName =  flag  + "" + originalFilename;

        File finaFile = new File(ROOT_PATH + "/" + fileName); //最终存到磁盘的文件对象
        if(!finaFile.getParentFile().exists()){ //如果父级目录不存在，就要创建
            finaFile.getParentFile().mkdirs();
        }
        file.transferTo(finaFile);
        //返回文件url路径
        String url = "http://" + ip + ":" + port + "/files/download?fileName=" + fileName;
       return Result.success(url);
   }
   /*
   文件下载
    */
   @GetMapping("/download")
   public void download(String fileName, HttpServletResponse response) throws IOException {
       File file = new File(ROOT_PATH + "/" + fileName);  // 文件在存盘存储的对象
       ServletOutputStream os = response.getOutputStream();
       response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
       response.setContentType("application/octet-stream");
       FileUtil.writeToStream(file, os);
       os.flush();
       os.close();
   }
}
