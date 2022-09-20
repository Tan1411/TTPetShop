<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="photocontainer">
<a href='<c:url value="/log-out?action=logout"/>'>
<img id="yourImageId" src="assetsWEB/slider/images/slider1.png" alt="Image" class="img-fluid"></a>
</div>
<jsp:include page="web/WEB_footerJS.jsp" />
<script type="text/javascript">

</script>

</body>
</html>