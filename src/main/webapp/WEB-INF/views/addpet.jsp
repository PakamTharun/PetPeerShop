<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Add Pet</title>

<head>
	<title>PetShop</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	<style>
		.menu-bar {
			display: flex;
			align-items: right;
			justify-content: space-between;
			background-color: #e9e9e9;
			padding: 10px;
		}
		
		.menu-links {
			display: flex;
			align-items: center;
			justify-content: flex-end;
			flex: 1;
		}
		
		.menu-links a {
			padding: 10px;
			text-decoration: none;
			color: #333;
			margin-right: 20px;
		}

		
		.center {
			display: flex;
			justify-content: center;
			margin-top: 20px;
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
.form-group button[type="submit"] {
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 2px;
    cursor: pointer;
}
.form-group button[type="submit"]:hover {
    background-color: #3e8e41;
}

</style>
</head>
<body>
	<div class="menu-bar">
	<h1>PetShop</h1>
		<div class="menu-links">
			<a href="/"><i class="fas fa-store"></i> Home</a>
			<a href="/mypets"><i class="fas fa-paw"></i> MyPets</a>
			<a href="/addpet"><i class="fas fa-plus-circle"></i> AddPet</a>
		</div>
		
		<div class="menu-links">
			<a href="/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
		</div>
	</div>
	
	
<div class="form-group">
    <h2>PetInformation</h2>
    <form:form action="/savepet" method="post" modelAttribute="addpet">
        <label for="Pet_name">Pet Name:</label>
        <form:input type="text" id="Pet_name" path="Pet_name" />
        <br>
        <label for="Pet_age">Pet Age:</label>
        <form:input type="text" id="Pet_age" path="Pet_age" />
        <br>
        <label for="Pet_place">Pet Place:</label>
        <form:input type="text" id="Pet_place" path="Pet_place" />
        <br>
        <button type="submit">Submit</button>
    </form:form>
</div>
</body>
</html>
