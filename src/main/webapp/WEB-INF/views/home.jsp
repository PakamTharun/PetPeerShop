<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
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
	<div class="center">
	<table border="2">
	
		<thead>
			<tr>
			<th>Pet id</th>
				<th>Pet name</th>
				<th>Pet age</th>
				<th>Pet place</th>
				<th>Buy</th>
			</tr>
		

<c:forEach items="${plist}" var="pets">


<tr>
<td>${pets.pet_id}</td>
<td>${pets.pet_name}</td>
<td>${pets.pet_age}</td>
<td>${pets.pet_place}</td>


<td>
<c:choose>
<c:when test="${empty pets.user.id}">

<a href="/buy/${pets.pet_id}"> buy </a>
</c:when>
<c:otherwise>
SOLDOUT
</c:otherwise>
</c:choose>
</td>
</tr>
</c:forEach>
		
		
	</table>
</div>
	
</body>
</html>
