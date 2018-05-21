<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here<sitemesh:write property="title"/></title>
    <link rel="stylesheet" href="/project_lac/assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i" />
    <link rel="stylesheet" href="/project_lac/assets/css/Footer-Basic.css" />
    <link rel="stylesheet" href="/project_lac/assets/css/Footer-Clean.css" />
    <link rel="stylesheet" href="/project_lac/assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="/project_lac/assets/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="/project_lac/assets/css/Login-Form-Clean.css">	
    <link rel="stylesheet" href="/project_lac/assets/css/Registration-Form-with-Photo.css">
    <link href="../../assets/css/fullcalendar.min.css" rel="stylesheet">
	<link href="../../assets/css/fullcalendar.print.min.css" rel="stylesheet" media="print">
	
	<script src="../../assets/js/jquery.min.js"></script>
	<script src="../../assets/js/moment.min.js"></script>
	<script src="../../assets/js/fullcalendar.min.js"></script>
 
<script src="/project_lac/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="/project_lac/assets/js/theme.js"></script>
    <sitemesh:write property="head"/>
</head>
<body>
  <div class = "container">
    <div class = "header">
      <c:import url="/jsp/decorator/topMenu.jsp"></c:import>
    </div>
    <div class = "content">
    <sitemesh:write property="body"/>
    </div>
    <div class = "footer">
      <c:import url="/jsp/decorator/footer.jsp"></c:import>
    </div>
  </div>	
</body>
</html>