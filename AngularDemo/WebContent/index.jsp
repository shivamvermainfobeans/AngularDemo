<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Angular Demo</title>
    <link href="${pageContext.servletContext.contextPath}/resource/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="${pageContext.servletContext.contextPath}/resource/css/bootstrap-theme.css" rel="stylesheet" media="screen">
</head>
<body ng-app="AngularDemo">
	<h1>Welcome to Angular Demo!</h1>
	<div ng-controller="MyController" class="container">
		<div class="row">
			<p>Type a letter in the input field:</p>
		
			<p><input class="form-control" type="text" ng-model="test" /></p>
			<ul>
				<li ng-repeat="x in names | filter:test">
					{{ x }}
				</li>
			</ul>
		</div>
	</div>


<script src="${pageContext.servletContext.contextPath}/resource/js/angular.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/resource/js/angular-animate.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/resource/js/angular-resource.js"></script>
<script src="${pageContext.servletContext.contextPath}/resource/js/angular-route.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/resource/js/app.js"></script>
</body>
</html>