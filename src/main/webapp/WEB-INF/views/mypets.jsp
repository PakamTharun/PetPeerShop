<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
  <title>My Pets</title>
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
  </style>
</head>
<body>
<div class="menu-bar">
	<h1>PetShop</h1>
	
		<div class="menu-links">
			<a href="/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
		</div>
	</div>
  <h1>My Pets</h1>
  <div class="center">
	<table border="2">
<tr>
<td>PETID</td>
<td>PETName</td>
<td>PETage</td>
<td>PETplace</td>

</tr>
<c:forEach items="${petlist}" var="pets">
<tr>
<td>${pets.pet_id}</td>
<td>${pets.pet_name}</td>
<td>${pets.pet_age}</td>
<td>${pets.pet_place}</td>

</tr>
</c:forEach>
</table>
  
  </div>
</body>
</html>
