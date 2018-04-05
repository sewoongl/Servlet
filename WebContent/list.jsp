<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.gudi.ListBean"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	<a href= "create.jsp">작성</a>
	<br>
	<% //최상위는 오브젝트 이기때문 List<ListBean>을 (ArrayList<ListBean>)로 형변환(범위를 축소 시켜주는)한다
	List<ListBean> list = (ArrayList<ListBean>) request.getSession().getAttribute("list");
	
	if(list==null){
	list = new ArrayList<ListBean>();
	list.add(new ListBean("HTML","HTML IS ..."));
	list.add(new ListBean("CSS","CSS IS ..."));
	list.add(new ListBean("JAVASCRIPT","JS ..."));
	request.getSession().setAttribute("list", list);
	}
	String html = "";
	for(int i = 0; i < list.size(); i++){
		html += (i + 1) + ") <a href='list.jsp?key=" + list.get(i).getTitle() +"'>"+ list.get(i).getTitle() +"</a><br>";
	}
	System.out.println(html);
%>
<%= html %>
	<%
		String key = request.getParameter("key");
		System.out.println(key);
		String contents = "";
		for(int i = 0; i < list.size(); i++){
			if(list.get(i).getTitle().equals(key)){
				System.out.println(list.get(i).getContentes());
				contents = list.get(i).getContentes();
			}
		}
	%>	
	<%=contents %>	
</body>
</html>