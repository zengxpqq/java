<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/updatepassword.js"></script>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet">

</head>
<body>
   <form action="pre" class="form-signin"  method="post"  onsubmit="return check();">
         <h2 class="form-signin-heading">修改密码</h2>
 			<table >
               <tr>
                <td >新密码:</td>
                <td  ><input type="password" name="newpassword" id="newpassword" class="input"></td>
                <td><label class="labelError1" id="newpasswordError"> </label></td>
               </tr>
                
               <tr>
                <td >确定新密码:</td>
                <td ><input type="password" name="repassword" id="repassword" class="input"></td>
                <td ><label class="labelError1" id="repasswordError"> </label></td>
                </tr>
                
               <tr>
                 <td></td>
                 <td><button class="btn btn-primary" type="submit">修改</button>
                      <input type="reset" class="btn btn-success" value="清 除">
                 </td>
                 <td></td>
               </tr>
            </table>
         <font color="red">${error }</font>
        </form>

</body>
</html>