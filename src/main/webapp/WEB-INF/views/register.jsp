<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- 	<title>Register Form</title> -->
<!-- 	<style> -->
<!--  	.menu-bar {  -->
<!--  	  display: flex;  -->
<!--  	  justify-content: space-between;  -->
<!--  	  align-items: center;  -->
<!-- 	  background-color: #f2f2f2;  -->
<!-- 	  padding: 10px 20px;  -->
<!-- 	}  -->

<!-- 	.menu-bar h2 { -->
<!--   margin: 0;  -->
<!--  	}  -->

<!--  	.menu-bar ul {  -->
<!--  	  list-style-type: none;  -->
<!--  	  margin: 0;  -->
<!--  	  padding: 0;  -->
<!-- 	  display: flex; -->
<!--  	}  -->

<!--  	.menu-bar li {  -->
<!--  	  margin-left: 20px;  -->
<!--  	}  -->

<!-- 	.menu-bar li:first-child {  -->
<!--  	  margin-left: 0;  -->
<!--  	  margin-right: auto;  -->
<!--  	}  -->

<!-- 	.menu-bar li a {  -->
<!--  	  display: flex;  -->
<!--  	  align-items: center;  -->
<!--  	  color: #333;  -->
<!--  	  text-align: center;  -->
<!--  	  padding: 14px 16px;  -->
<!--  	  text-decoration: none;  -->
<!--  	}  -->

<!--  	.menu-bar li a:hover {  -->
<!--  	  background-color: #ddd;  -->
<!--  	}  -->

<!--  	.menu-bar li a.active {  -->
<!--  	  background-color: #4CAF50;  -->
<!--  	  color: white;  -->
<!--  	}  -->

<!-- 	.menu-bar li a i {  -->
<!--  	  margin-right: 5px;/ -->
<!--  	}	  -->
<!--  	.form-group {  -->
<!--      display: flex;  -->
<!--      flex-direction: column;  -->
<!--      align-items: center;  -->
<!--      margin: 50px auto 0;  -->
<!--      padding: 10px;  -->
<!--      background-color: #f5f5f5;  -->
<!--      border: 0.5px solid #ccc;  -->
<!--      border-radius: 5px;  -->
<!--      width:500px;  -->
<!--  }  -->
<!--  .form-group label {  -->
<!--      display: inline-block;  -->
<!--      width: 100%;  -->
<!--      max-width: 200px;  -->
<!--      font-weight: bold;  -->
<!--      margin-bottom: 10px;  -->
<!--  }  -->
<!--  .form-group input[type="text"],  -->
<!--  .form-group input[type="password"] {  -->
<!--      width: 100%;  -->
<!--      max-width: 300px;  -->
<!--      padding: 5px;  -->
<!--      border-radius: 5px;  -->
<!--      border: 1px solid #ccc;  -->
<!--      margin-bottom: 20px;  -->
<!--  }  -->
<!--  .form-group button[type="Register"] {  -->
<!--      background-color: #4CAF50;  -->
<!--      color: #fff;  -->
<!--      padding: 10px 20px;  -->
<!--      border: none;  -->
<!--      border-radius: 2px;  -->
<!--      cursor: pointer;  -->
<!--  }  -->
<!--  .form-group button[type="Login"]:hover {  -->
<!--      background-color: #3e8e41;  -->
<!-- }  -->

	
		
<!-- 	</style>  -->
</head> 
 <body> 
<div class="menu-bar"> 
		<h2>PetShop</h2>
				<ul> 
			<li><a href="/register"><i class="fas fa-user-plus"></i>SignUp</a></li>
			
	</ul> 
	</div>
 
	
<%-- 	<form:form method="POST" action="${pageContext.request.contextPath}/register" modelAttribute="registerform" class="form"> --%>
<%-- 		<form:label path="username" class="label">UserName:</form:label> --%>
<%-- 		<form:input path="username" /> --%>

<%-- 		<form:label path="password" class="label">Password:</form:label> --%>
<%-- 		<form:password path="password" /> --%>

<%-- 		<form:label path="confirmpassword" class="label">Confirm Password:</form:label> --%>
<%-- 		<form:password path="confirmpassword" /> --%>

<!-- 		<div class="button-container"> -->
<!--   <button type="Login">Login</button> -->
<!-- </div>	 -->
<%-- 	</form:form> --%>
<!-- 	</div> -->
<!-- </body> -->
<!-- </html> -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>
    <style>
    .menu-bar { 
 	  display: flex; 
 	  justify-content: space-between; 
 	  align-items: center; 
	  background-color: #f2f2f2; 
	  padding: 10px 20px; 
	} 
	.menu-bar h2 {
  margin: 0; 
 	} 
 	.menu-bar ul { 
 	  list-style-type: none; 
 	  margin: 0; 
 	  padding: 0; 
	  display: flex;
 	} 
 	.menu-bar li { 
 	  margin-left: 20px; 
 	}
 	.menu-bar li:first-child { 
 	  margin-left: 0; 
 	  margin-right: auto; 
 	}  
 	
	.menu-bar li a { 
 	  display: flex; 
 	  align-items: center; 
 	  color: #333; 
 	  text-align: center; 
 	  padding: 14px 16px; 
 	  text-decoration: none; 
 	} 

 	.menu-bar li a:hover { 
 	  background-color: #ddd; 
 	} 
	.menu-bar li a.active { 
 	  background-color: #4CAF50; 
 	  color: white; 
 	} 
	.menu-bar li a.active { 
 	  background-color: #4CAF50; 
 	  color: white; 
 	} 

	.menu-bar li a i { 
 	  margin-right: 5px;/
 	}	 
 	.container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.form-signin {
  background-color: #fff;
  border-radius: 5px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
  padding: 20px;
  text-align: center;
  width: 400px;
}

.form-signin label {
  display: block;
  margin-bottom: 10px;
  text-align: left;
}

.form-signin input[type="text"],
.form-signin input[type="password"] {
  border: 1px solid #ccc;
  border-radius: 3px;
  box-sizing: border-box;
  display: block;
  font-size: 16px;
  margin-bottom: 10px;
  padding: 10px;
  width: 100%;
}

.form-signin button {
  background-color: green;
  border: none;
  border-radius: 3px;
  color: black;
  cursor: pointer;
  font-size: 16px;
  margin-top: 10px;
  padding: 10px;
  width: 100%;
}

.form-signin a {
  color: green;
}

.form-signin a:hover {
  text-decoration: none;
}
	
    
    </style>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    
</head>

<body>

<div class="container">

    <form:form method="POST" modelAttribute="registerform" class="form-signin">
    <div class="form-group"> 
        <h2 class="form-signin-heading">Create your account</h2>
        <spring:bind path="username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
            UserName:
                <form:input type="text"  path="username" class="form-control" placeholder="Username"
                            autofocus="true"></form:input>
                <form:errors path="username"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
            Password:
                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                <form:errors path="password"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="Confirmpassword">
            <div class="form-group ${status.error ? 'has-error' : ''}">
            ConfirmPassword:
                <form:input type="password" path="Confirmpassword" class="form-control"
                            placeholder="Confirm your password"></form:input>
                <form:errors path="Confirmpassword"></form:errors>
            </div>
        </spring:bind>
<div class="button-container"> 
   <button type="Register">Register</button> 
   </form:form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>