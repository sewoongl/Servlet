package kr.gudi;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Main extends HttpServlet {

	@Override //부모가 만들어 진것을 재구성 하려는 뜻      get방식은 그냥 쓰면됨                                ServletException  IOException  두종류 오류           
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet");
	}

	@Override  // 새로운 화면이 필요함 (새로운 html,jsp등 새로운 파일이 필요)
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost");
	}
	
		

}
