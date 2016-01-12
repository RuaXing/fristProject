package com.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DownServlet
 */
@WebServlet("/DownServlet")
public class DownServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getParameter("path");//获取上传文件的路劲
		path = new String(path.getBytes("ISO-8859-1"), "UTF-8");
		File file = new File(path);
		InputStream in = new FileInputStream(file);
		OutputStream os = response.getOutputStream();
		response.addHeader("Content-Dispostion", "attachment;filename="
				+new String(file.getName().getBytes("GBK"),"ISO-8859-1"));
		response.addHeader("Content-Length", file.length()+"");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/octet-stream");
		int data = 0;
		while ((data = in.read())!=-1) {
			os.write(data);
		}
		os.close();
		in.close();
	}

}
