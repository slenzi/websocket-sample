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

	<title>WebSocket Sample</title>
	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="">
	<meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no" />

	<jsp:include page="/includes/top_include.jsp" />

</head>
<body>

	<div ng-controller="AppCtrl" layout="vertical" layout-fill>

		<%-- left side nav, main content, and right side nav, in a horizontal layout --%>
		<section layout="horizontal" flex>

			<%-- left side nav --%>
			<md-sidenav class="md-sidenav-left md-whiteframe-z2" component-id="left" is-locked-open="$media('md')">
				<md-toolbar class="md-theme-indigo">
					<h1 class="md-toolbar-tools">Chat Menu</h1>
				</md-toolbar>
				<md-content class="md-padding" ng-controller="LeftCtrl">
					<md-button ng-click="close()" class="md-raised" hide-md>[X] Close Menu</md-button>
					<!--
					<md-button ng-click="close()" class="md-primary" hide-md>[X] Close Menu</md-button>
					-->
					<p>
						<a href="<%=request.getContextPath() %>/chat/index.html">Run Chat Sample</a>
					</p>
					<p>
						<a href="<%=request.getContextPath() %>/spring/test">Run MVC Test</a>
					</p>
					<p hide show-md>
						This sidenav is locked open on your device. To go
						back to the default behavior, narrow your display.
					</p>
				</md-content>
			</md-sidenav>

			<%-- main content --%>
			<md-content flex class="md-padding">
				<div layout="vertical" layout-fill layout-align="center center">
					<h2>WebSocket Sample!</h2>
					<p>
					The left sidenav will 'lock open' on a medium (>=960px wide)device.
					</p>
					<div>
						<md-button ng-click="toggleLeft()" class="md-primary" hide-md>Toggle left menu</md-button>
					</div>
					<div>
						<md-button ng-click="toggleRight()" class="md-primary">Toggle right menu</md-button>
					</div>
					<p>
				    <md-button class="md-primary md-fab" md-theme="deep-orange">
				      (X)
				    </md-button>
				    </p>
				</div>
			</md-content>

			<%-- right side nav --%>
			<md-sidenav class="md-sidenav-right md-whiteframe-z2" component-id="right">
				<md-toolbar class="md-theme-light">
					<h1 class="md-toolbar-tools">Sidenav Right</h1>
				</md-toolbar>
				<md-content ng-controller="RightCtrl" class="md-padding">
					<md-button ng-click="close()" class="md-primary"> Close Sidenav Right </md-button>
				</md-content>
			</md-sidenav>

		</section>

	</div>

	<jsp:include page="/includes/bottom_include.jsp" />

</body>
</html>
