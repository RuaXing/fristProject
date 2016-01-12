package com.servlet;



import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;



/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String adjunctname;
		@SuppressWarnings("deprecation")
		String fileDir = request.getRealPath("/images");//指定上传文件的保存地址
		String message = "文件上传成功";
		String address = "";
		if (ServletFileUpload.isMultipartContent(request)) {//判断是否是上传文件
			DiskFileItemFactory factory = new DiskFileItemFactory();
			factory.setSizeThreshold(20*1024);//设置内存中允许存储的字节数
			factory.setRepository(factory.getRepository());//设置存放临时文件的目录
			ServletFileUpload upload = new ServletFileUpload(factory);//创建新的文件句柄
			int size = 2*1024*1024;//指定上传文件的大小
			@SuppressWarnings("rawtypes")//创建保存上传文件的集合对象
			List formlists = null;
			try{
				formlists = upload.parseRequest(request);//获取上传文件集合
			}catch(FileUploadException e){
				e.printStackTrace();
			}
			@SuppressWarnings("rawtypes")
			Iterator iter = formlists.iterator();//获取上传文件迭代器
			while (iter.hasNext()) {
				FileItem formitem = (FileItem)iter.next();//获取每个上传文件
				if (!formitem.isFormField()) {//忽略不是上传文件的表单域
					String name = formitem.getName();//获取上传文件的名称
					if (formitem.getSize()>size) {//如果上传文件大于规定的上传文件大小
						message = "您上传的文件太大，请选择不超过2MB的文件";
						break;//退出程序
					}
					String adjuntsize = new Long(formitem.getSize()).toString();//获取上传文件的大小
					if ((name == null)||(name.equals(""))&&(adjuntsize.equals("0"))) //如果上传文件为空
						continue;//重新开始循环
						adjunctname = name.substring(name.lastIndexOf("\\")+1,name.length());
						address = fileDir+"\\"+adjunctname;//创建上传文件的保存地址
						File savefile = new File(address);//根据文件保存地址，创建文件
						try{
							formitem.write(savefile);//向文件写数据
						}catch(Exception e){
							e.printStackTrace();
						}
					}
				}
			request.setAttribute("result", message);//将提示信息保存在request对象中
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");//设置相应返回地址
			requestDispatcher.forward(request, response);
			}
			
		}
	}

