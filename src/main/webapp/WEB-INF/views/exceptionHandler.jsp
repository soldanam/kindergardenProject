<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>요청 처리상에 문제가 발생하였습니다.</title>
</head>
<body>
   <h2>요청 처리상에 문제가 발생하였습니다.</h2>
   <h2>Exception : ${exception.message}</h2>
   Failed URL: ${url}
   Exception:  ${exception.message}
   <c:forEach items="${exception.stackTrace}" var="ste">    ${ste} 
   </c:forEach>
</body>
</html>