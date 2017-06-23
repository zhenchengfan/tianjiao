package com.smart.web;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.smart.pojo.BannerTable;
import com.smart.pojo.Yuangongxinxi;
import com.smart.service.ITeacherServer;
import com.smart.util.JsonUtil;

@RestController
public class BaseController{
	
	@Autowired
	private ITeacherServer teacherServer;
	
	@RequestMapping(value={"/","/index.html"})
	public ModelAndView index(HttpServletRequest req){
		return new ModelAndView("index");
	}
	
	@RequestMapping(value={"/teacherManager.html"})
	public ModelAndView getbBnnerManager(){
		return new ModelAndView("teacherManager");
	}
	
	@RequestMapping("/form_webuploader.html")
	public ModelAndView getWebuploader(){
		return new ModelAndView("form_webuploader");
	}

	@RequestMapping("/bannerManagerAdd.html")
	public ModelAndView bannerManagerAdd(HttpServletRequest req,BannerTable bm){
		
		return null;
	}
	
	@RequestMapping("/bannerTable.html")
	public ModelAndView bannerTable(){
		return new ModelAndView("bannerTable");
	}
	@ResponseBody
	@RequestMapping("/teacherQuery.html")
	public String teacherTable(Yuangongxinxi ygxx){
		List<Yuangongxinxi> ygxxList = teacherServer.queryAllTeacher(ygxx);
		return JsonUtil.objectToJson(ygxxList);
	}
	
	@RequestMapping(value = "/uploadFiles", method = RequestMethod.POST)
	  @ResponseBody
	  public void handleFileUpload(HttpServletRequest request) {
	    List<MultipartFile> files = ((MultipartHttpServletRequest) request)
	        .getFiles("file");
	    MultipartFile file = null;
	    BufferedOutputStream stream = null;
	    for (int i = 0; i < files.size(); ++i) {
	      file = files.get(i);
	      if (!file.isEmpty()) {
	        try {
	          String uploadFilePath = file.getOriginalFilename();
	          System.out.println("uploadFlePath:" + uploadFilePath);
	          // 截取上传文件的文件名
	          String uploadFileName = uploadFilePath
	              .substring(uploadFilePath.lastIndexOf('\\') + 1,
	                  uploadFilePath.indexOf('.'));
	          System.out.println("multiReq.getFile()" + uploadFileName);
	          // 截取上传文件的后缀
	          String uploadFileSuffix = uploadFilePath.substring(
	              uploadFilePath.indexOf('.') + 1, uploadFilePath.length());
	          System.out.println("uploadFileSuffix:" + uploadFileSuffix);
	          stream = new BufferedOutputStream(new FileOutputStream(new File(
	              ".//uploadFiles//" + uploadFileName + "." + uploadFileSuffix)));
	          byte[] bytes = file.getBytes();
	          stream.write(bytes,0,bytes.length);
	        } catch (Exception e) {
	          e.printStackTrace();
	        } finally {
	          try {
	            if (stream != null) {
	              stream.close();
	            }
	          } catch (IOException e) {
	            e.printStackTrace();
	          }
	        }
	      } else {
	        System.out.println("上传文件为空");
	      }
	    }
	    System.out.println("文件接受成功了");
	  }
}
