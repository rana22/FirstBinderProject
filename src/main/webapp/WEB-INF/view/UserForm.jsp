<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="UTF-8">
    <title>Login/Sign-In</title>
    <link rel="stylesheet" href="http://localhost:8080/FirstBinderProject/resources/loginForm/css/normalize.css">
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
    <link rel="stylesheet" href="http://localhost:8080/FirstBinderProject/resources/loginForm/css/style.css">
  </head>
  <body>
  <dir width= "80%">
            <form action="http://localhost:8080/FirstBinderProject/user" method="post">
            	<h2>User Information</h2>
            	<input type="text" name="fName" placeholder="First Name"/>
            	<input type="text" name="lName" placeholder="Last Name"/>
            	<input type="text" name="userName" placeholder="User Name"/>
            	<input type="text" name="password" placeholder="Password"/>
            	<input type="submit" value="Submit" width="200px" height="200"/>
            </form>
            
   </dir>
   		<table>
		    <c:forEach items="${products}" var="product">
		        <tr>
		            <td>${product.name}</td>
		            <td><a href="product?id=${product.id}">detail</a></td>
		            <dl>
					    <dt>ID</dt>
					    <dd>${product.id}</dd>
					    </dl>
		        </tr>
		    </c:forEach>
		</table>
   
   <button id="showRow">Show Row</button>
   <div >
   	<ul id= "allList"></ul>
   </div>
            
		<!-- Javascript Jquery Source link -->
    	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
		<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
		
		<script>
		
		$('button#showRow').on('click', function(){
			/* $.ajax({url: "http://localhost:8080/FirstBinderProject/users", success: function(result){
		        alert(result);
		    }}); */
		    var url = "http://localhost:8080/FirstBinderProject/userList";
			
		    
			$.ajax({
	            url: url,
	            dataType: 'json',
	            type: 'get',
	            contentType: 'application/json',
	            processData: false,
	            async: true,
	            success: function( data, textStatus, jQxhr ){
	                console.log(data)
	                
	            },
	            error: function( jqXhr, textStatus, errorThrown ){
	                console.log( errorThrown );
	            }
	        });
		});
		</script>
  </body>
</html>
