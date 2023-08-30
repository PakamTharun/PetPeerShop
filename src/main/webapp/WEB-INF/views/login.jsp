
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

    <title>Log in with your account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
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
  background-color: #428bca;
  border: none;
  border-radius: 3px;
  color: #fff;
  cursor: pointer;
  font-size: 16px;
  margin-top: 10px;
  padding: 10px;
  width: 100%;
}

.form-signin a {
  color: #428bca;
}

.form-signin a:hover {
  text-decoration: none;
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

<div class="container">
    <form method="POST" action="${contextPath}/login" class="form-signin">
        <h2 class="form-heading">Log in</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
             <label>UserName:</label>
            <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="autofocus"/>
                   <br>
                   <label>Password:</label>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
             <br>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            
            <button class="btn btn-lg btn-primary btn-block text-center" type="submit">Log In</button>
            <h4 class="text-center"><a href="${contextPath}/register">Create an account</a></h4>
        </div>

    </form>


</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>