package com.board;

import java.io.File;
import java.io.IOException;
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

import com.dto.BoardDTO;
import com.exception.MyException;
import com.service.BoardService;

/**
 * Servlet implementation class BoardWriteServlet
 */
@WebServlet("/BoardWriteServlet")
public class BoardWriteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
	
		
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
		 
		          }
		        }//end while
		
			String userid = request.getParameter("userid");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String fName = request.getParameter("fileName");
		
			
			BoardDTO dto = new BoardDTO();
			dto.setuserid(userid);
			dto.setTitle(title);
			dto.setContent(content);
			dto.setFileName(fName);
		
		BoardService service = new BoardService();
		String target="BoardListServlet";
		try {
			service.boardWrite(dto);
		} catch (MyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			target="error.jsp";
		}
		
		response.sendRedirect(target);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}





