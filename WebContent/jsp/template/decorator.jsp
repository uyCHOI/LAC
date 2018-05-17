<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here<sitemesh:write property="title"/></title>
    <link rel="stylesheet" href="/minipro3/assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i" />
    <link rel="stylesheet" href="/minipro3/assets/css/Footer-Basic.css" />
    <link rel="stylesheet" href="/minipro3/assets/css/Footer-Clean.css" />
<script src="/minipro3/assets/js/jquery.min.js"></script>
<script src="/minipro3/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="/minipro3/assets/js/theme.js"></script>
    <sitemesh:write property="write"/>
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