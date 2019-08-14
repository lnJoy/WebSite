<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="user.UserDTO"%>

<%@ page import="user.UserDAO"%>

<%@ page import="util.SHA256"%>

<%@ page import="java.io.PrintWriter"%>

<%

	request.setCharacterEncoding("UTF-8");

	String userID = null;

	String userPassword = null;

	String userEmail = null;
	
	String userNickname = null;

	if(request.getParameter("userID") != null) {

		userID = (String) request.getParameter("userID");

	}

	if(request.getParameter("userPassword") != null) {

		userPassword = (String) request.getParameter("userPassword");

	}

	if(request.getParameter("userEmail") != null) {

		userEmail = (String) request.getParameter("userEmail");

	}
	
	if(request.getParameter("userNickname") != null) {

		userNickname = (String) request.getParameter("userNickname");

	}


	if (userID == null || userPassword == null || userEmail == null || userNickname == null) {

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('입력이 안 된 사항이 있습니다.');");

		script.println("history.back();");

		script.println("</script>");

		script.close();

	}
	
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(new UserDTO(userID, userPassword, userEmail, SHA256.getSHA256(userEmail), false, userNickname));
	if (result == -1) {
		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('이미 존재하는 아이디입니다.');");

		script.println("history.back();");

		script.println("</script>");

		script.close();
	} else {
		session.setAttribute("userID", userID);
		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("location.href = 'emailSendAction.jsp';");

		script.println("history.back();");

		script.println("</script>");

		script.close();
	}
	
%>