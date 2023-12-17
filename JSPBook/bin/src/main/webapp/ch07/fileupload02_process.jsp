<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import = "java.util.*"%>
<%@ page import="java.io.*"%>
<html>
<head> 
<title> File Upload </title>
</head>
<body> 

	<%
		MultipartRequest multi = new MultipartRequest
		(request, "C:\\upload", 5*1024*1024, "utf-8", new DefualtFileRenamePolicy());
	
		String name1 = multi.getParameter("name1");
		String subject1 = multi.getParameter("subject1");
	
		String name2 = multi.getParameter("name2");
		String subject2 = multi.getParameter("subject2");
	
	
		String name3 = multi.getParameter("name3");
		String subject3 = multi.getParameter("subject3");
	
		Enumeration files = multi.getFileNames();
	
		String file3 = (String) files.nextElement();
		String filename3 = multi.getFilesystemName(file3);
	
		String file2 = (String) files.nextElement();
		String filename2 = multi.getFilesystemName(file2);
	
		String file1 = (String) files.nextElement();
		String filename1 = multi.getFilesystemName(file1);
	%>
	<table border ="1"> 
		<tr> 
			<tr width ="100"> 이름 </tr>
			<tr width ="100"> 제목 </tr>
			<tr width ="100"> 파일 </tr>
		</tr>
		<%
			out.println("<tr><td>" + name1 + "</tr>");
			out.println("<td>" + subject1 + "</tr>");
			out.println("<td>" + filename1 + "</td></tr>\n");
		
			out.println("<tr><td>" + name2 + "</tr>");
			out.println("<td>" + subject2 + "</tr>");
			out.println("<td>" + filename2 + "</td></tr>\n");
			
			out.println("<tr><td>" + name3 + "</tr>");
			out.println("<td>" + subject3 + "</tr>");
			out.println("<td>" + filename3 + "</td></tr>\n");
		%>
	</table>
	
</body>
</html>
		
		
		
		if( file != null){
			out.println("파일 크기 : " + file.length());
			out.println("<br>");
		
		}
	}
%>ml>