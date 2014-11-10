<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html lang="en" ng-app="myApp" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="en" ng-app="myApp" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="en" ng-app="myApp" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en" ng-app="myApp" class="no-js">
<!--<![endif]-->
<head>

<title>Test Spring MVC</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">

	<!--
	<meta name="viewport" content="width=device-width, initial-scale=1">
	-->

	<meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no" />

	<jsp:include page="/includes/top_include.jsp" />

</head>
<body layout="horizontal">

	<md-sidenav class="md-sidenav-left md-whiteframe-z2" component-id="left" is-locked-open="$media('md')">
	
		<md-toolbar md-theme="deep-orange">
			
			<h1 class="md-toolbar-tools">Chat Menu</h1>
		
		</md-toolbar>
		
		<md-content class="md-padding" ng-controller="LeftCtrl">

			<md-button ng-click="close()" class="md-raised" hide-md>[X] Close Menu</md-button>
			
			<!--
			<md-button ng-click="close()" class="md-primary" hide-md>[X] Close Menu</md-button>
			-->
		
			<p>
				<a href="<%=request.getContextPath() %>">Home</a>
			</p>
		
			<p>
				<a href="<%=request.getContextPath() %>/sample/index.html">Run Chat Sample</a>
			</p>
			
			<p hide show-md>
				This sidenav is locked open on your device. To go
				back to the default behavior, narrow your display.
			</p>
			
		</md-content>
	
	</md-sidenav>
	
	<div layout="vertical" layout-fill tabIndex="-1" role="main">
		
		<md-toolbar md-theme="indigo">
			
			<div class="md-toolbar-tools" ng-click="openMenu()">
				<md-icon icon="<%=request.getContextPath() %>/img/ic_menu_24px.svg" hide-md></md-icon>
				<h1 class="md-toolbar-tools">
	        		<span>Spring MVC Test</span>
	      		</h1>
			</div>
      		
    	</md-toolbar>
    	
	<%
	String message = (String)request.getAttribute("message");
	if(message != null){
		out.println("Message = " + message);
	}else{
		out.println("No message found in request...");
	}
	%>
  
	</div>

	<jsp:include page="/includes/bottom_include.jsp" />

</body>
</html>