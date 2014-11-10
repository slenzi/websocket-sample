<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--
Get context path:
${pageContext.request.contextPath}
request.getContextPath()
--%>

<!--[if lt IE 7]>
    <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<script src="<%=request.getContextPath() %>/bower_components/angular/angular.js"></script>
<script src="<%=request.getContextPath() %>/bower_components/angular-aria/angular-aria.js"></script>
<script src="<%=request.getContextPath() %>/bower_components/angular-animate/angular-animate.js"></script>
<script src="<%=request.getContextPath() %>/bower_components/hammerjs/hammer.js"></script>
<script src="<%=request.getContextPath() %>/bower_components/angular-material/angular-material.js"></script>
<script src="<%=request.getContextPath() %>/bower_components/angular-route/angular-route.js"></script>
<script src="<%=request.getContextPath() %>/bower_components/angular-resource/angular-resource.js"></script>

<script src="<%=request.getContextPath() %>/js/app.js"></script>
<script src="<%=request.getContextPath() %>/js/services.js"></script>
<script src="<%=request.getContextPath() %>/js/controllers.js"></script>
<script src="<%=request.getContextPath() %>/js/filters.js"></script>
<script src="<%=request.getContextPath() %>/js/directives.js"></script>