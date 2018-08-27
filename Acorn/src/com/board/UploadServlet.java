package com.board;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {

		 DiskFileItemFactory factory = new DiskFileItemFactory();

		// Configure a repository (to ensure a secure temp location is used)
	
		 ServletContext ctx =getServletContext();		
		File repository = (File) ctx.getAttribute("javax.servlet.context.tempdir"); 
		factory.setRepository(repository);

		
		 ServletFileUpload upload = new ServletFileUpload(factory);
	        // If file size exceeds, a FileUploadException will be thrown
		 upload.setSizeMax(1024*1024*5); //업로드 되는 전체 파일크기 제한
		 upload.setFileSizeMax(1024*1024*2); // 개별 파일의 max값 제한

	        List fileItems = null;
			try {
				fileItems = upload.parseRequest(request);
			} catch (FileUploadException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	        Iterator<FileItem> itr = fileItems.iterator();
	        
	        ArrayList<String> fileNames = new ArrayList<>();
	        
	        String fileName = null;
	        String comment = null;
	        while(itr.hasNext()) {
	          FileItem fi = itr.next();

			  if( !fi.isFormField() ) { // input type="file" 인 경우
			  
	        	  fileNames.add(fileName);
	            System.out.println("\nNAME: "+fi.getName());
	            System.out.println("SIZE: "+fi.getSize());
	           
	            File fullFile  = new File(fi.getName());  
	            File fNew = new File("c://upload//",fullFile.getName());
	            try {
					fi.write(fNew);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			  } else { // input type="file" 아닌 경우
	            System.out.println("Field ="+fi.getFieldName()+"\t"+fi.getString("UTF-8"));  // getString("UTF-8") 지정해야 한글처리 가능
	            comment = fi.getString("UTF-8");
	          }
	        }//end while
		
	        response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        out.print("<html><body>");
	        out.print("comment: " + comment+"<br>" );
	        // 업로드한 파일 보기
	        for(int i=0; i < fileNames.size(); i++) {
	        	String fName = fileNames.get(i);
	         out.print("파일명"+(i+1) +": " + fName+"</a><br>" );
	        }
	        out.print("</body></html");
	        
	        
	        
	}//end doPost

}//end class
