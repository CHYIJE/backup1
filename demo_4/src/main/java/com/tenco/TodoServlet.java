package com.tenco;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.awt.Window.Type;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.nio.Buffer;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;

public class TodoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TodoServlet() {
        super();
    }
    
    // get 요청시 동작 
    // 주소설계 - http://localhost8080:/d4/todo-servlet
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get 요청 확인");
		
		Todo todo1 = new Todo();
		todo1.setId(100);
		todo1.setTitle("오늘은 JSON 리턴하기 연습");
		todo1.setComppleted(false);
		
		
		// Gson lib 사용가능
		URL url = new URL("https://jsonplaceholder.typicode.com/comments");
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		
		BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
		
		String inputLine;
		StringBuffer buffer = new StringBuffer();
		while( (inputLine = in.readLine()) != null ) {
			buffer.append(inputLine);
		}
		in.close();
		
		Gson gson1 = new GsonBuilder().setPrettyPrinting().create();
		
		Type albumType = new TypeToken<List<Album>>(){}.getType();
		List<Album>  albumList = gson1.fromJson(buffer.toString(), albumType);
		
		System.out.println(albumList.size());
		for(Album a : albumList ) {
			System.out.println(a.toString());
		}
	

		response.setContentType("application/json");
//		String strJson = "{\r\n"
//				+ "  \"userId\": 1,\r\n"
//				+ "  \"id\": 2,\r\n"
//				+ "  \"title\": \"quis ut nam facilis et officia qui\",\r\n"
//				+ "  \"completed\": false\r\n"
//				+ "}";
		PrintWriter pw = response.getWriter();
		pw.print(todo1.toString());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
