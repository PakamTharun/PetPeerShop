<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
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
	body {
  background: url(https://cdn.wallpapersafari.com/98/26/K2DkFs.png);
  background-repeat: no-repeat;
  background-size: cover;
}
	</style>
</head>
<body>
	<div class="menu-bar">
		<h2>PetShop</h2>
		<ul>
			<li><a href="/register"><i class="fas fa-user-plus"></i>SignUp</a></li>
			<li><a href="/login"><i class="fas fa-sign-in-alt"></i>Login</a></li>
		</ul>
	</div>
</body>
</html>
