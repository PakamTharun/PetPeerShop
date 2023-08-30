<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
	<title>Welcome Page</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
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

	.menu-bar li a i {
	  margin-right: 5px;
	}
	.form-group {
    margin: 50px auto 0;
    padding: 10px;
    background-color: #f5f5f5;
    border: 0.5px solid #ccc;
    border-radius: 5px;
    width:500px;
}

.form-group h2 {
    text-align: center;
}

.form-group label {
    display: inline-block;
    width: 100px;
    font-weight: bold;
}
.form-group input[type="text"] {
    width: 200px;
    padding: 5px;
    border-radius: 5px;
    border: 1px solid #ccc;
}

.form-group button[type="Login"] {
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 2px;
    cursor: pointer;
}
.form-group button[type="Login"]:hover {
    background-color: #3e8e41;
}
	</style>
	</head>
<body>
	<div class="menu-bar">
		<h2>PetShop</h2>
			<ul>
			<li><a href="/login"><i class="fas fa-user-plus"></i>Sign in</a></li>
		</ul>
	</div>
</body>

<div class="form-group">
<h1 class="center">Login Form</h1>
<p>You are successfully registered.Please Login now</p>
	<form:form action="/login" method="post" modelAttribute="loginform" style="display: flex; flex-direction: column; align-items: center;">
		<div class="form-row">
			<label for="username" class="form-label">UserName:</label>
			<form:input type="text" id="username" path="username" />
		</div>
		<div class="form-row">
			<label for="password" class="form-label">Password:</label>
			<form:input type="text" id="password" path="password" />
		<div class="button-container">
  <button type="Login">Login</button>
</div>	
	</form:form>
	</div>
</html>
