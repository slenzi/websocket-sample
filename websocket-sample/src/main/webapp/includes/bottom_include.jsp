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

<%--all web components managed by bower --%>
<jsp:include page="bower_components.jsp" />

<%--common javascript --%>
<script src="<%=request.getContextPath() %>/common/app.js"></script>
<script src="<%=request.getContextPath() %>/common/services.js"></script>
<script src="<%=request.getContextPath() %>/common/controllers.js"></script>
<script src="<%=request.getContextPath() %>/common/filters.js"></script>
<script src="<%=request.getContextPath() %>/common/directives.js"></script>