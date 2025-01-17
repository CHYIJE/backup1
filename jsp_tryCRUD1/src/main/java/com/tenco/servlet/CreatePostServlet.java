package com.tenco.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet ("/create-post")
public class CreatePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CreatePostServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	try (Connection conn = DBUtil.getConnection()){
			String sql = "INSERT INTO posts(title, content) VALUES(?, ?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.executeUpdate();
			
			response.sendRedirect("result.jsp?message=create-success");
	} catch (Exception e) {
		response.sendRedirect("result.jsp?message=error");
	}
		
	}

}
