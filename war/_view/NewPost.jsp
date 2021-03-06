<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
	<head>
		<title>New Post</title>
		
		<link rel="stylesheet" type="text/css" href="_view/style.css">
	</head>

	<body>
		<div class="cursor">
			<div id="background">
	    		<img src="https://lh3.ggpht.com/F8Ykdb1B_NtMaVmyI4np36FzXvxf9yFLgkJWGIgBA-H4RQ2IDSVz8NXtEmRi_GIgkA=h900" class="stretch" alt="" />
			</div>
			
			<div class="header"> 
				CS320 Public Forum 
		    </div>   
		    
		    <div class="main_bar"> 
				New Comment
		    </div> 
		    
		    <!--
			<select class="dropbtn">
				      <option value="select" selected>Select File Type</option>
				      <option value="text">Text File</option>
				      <option value="image">Image</option>
				      <option value="video">Video</option>
			</select>
			-->
			
			<div>	
				<c:if test="${! empty errorMessage}">
					<div class="error">${errorMessage}</div>
				</c:if>
				
				<c:if test="${! empty successMessage}">
					<div class="success">Successfully added ${successMessage} to Library</div>
				</c:if>
				
				
				
				<form action="${pageContext.servletContext.contextPath}/NewPost" method="post">
					<table>
						<tr>
							<td class="label">Name:</td>
							<td><input type="text" name="title" size="20" value="${allPosts.title}" class="title_text_box" class="title_text_box:hover"></td>
						</tr>
						<tr>
							<td class="label">Comment:</td>
							<td><input type="text" name="text" size="20" value="${allPosts.text}" class="text_box" class="text_box:hover"></td>
						</tr>	
					</table>
					<input type="Submit" name="login" value="Submit" class="login_page_button login_page_button:hover">
				</form>
				
				 
				 <!-- 
				 <form action="${pageContext.servletContext.contextPath}/NewPost" method="post" enctype="multipart/form-data">
			      		<input type="file" name="file" size="100"/>
			       <br />
			       <br />
			    		<input type="submit" value="Upload File" class="login_page_button login_page_button:hover"/>
			       </form>
			      -->
			</div>		
		</div>
	</body>
</html>
