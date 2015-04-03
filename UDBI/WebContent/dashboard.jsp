<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UDBI</title>

	<script type="text/javascript">
		function validate(){
			
			var driver=document.frm.dclass.value;
			var url=document.frm.durl.value;
			var user=document.frm.uname.value;
			var pass=document.frm.upass.value;
			
			if(driver.length==0){
				alert("Please specify driver class.");
				document.frm.dclass.focus();
				return false;
			}
		}
	</script>

</head>
<body>
	
	<%@include file="header.html" %>
	<br/>
	<h1 style="color: white;" align="center">Dashboard</h1>
	<hr/>
	<br/>
	<form action="processDB.jsp" method="post" name="frm" onsubmit="return validate();">
		<table align="center" width="60%" cellpadding="8" cellspacing="8" bgcolor="#7FFFD4">
			<tr>
				<td>Driver Class</td>
				<td><input type="text" name="dclass" size="35"></td>
			</tr>
			<tr>
				<td>Database URL</td>
				<td><input type="text" name="durl" size="35"></td>
			</tr>
			<tr>
				<td>Username</td>
				<td><input type="text" name="uname" size="35"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="upass" size="35"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit"></td>
				<td><input type="reset" value="Reset"></td>
			</tr>
		</table>
	</form>
	<br/>
	<br/>
	<%@include file="footer.html" %>
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>