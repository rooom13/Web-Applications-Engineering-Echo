<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script>
$(document).ready(function(){
    $("#loginForm").validate({
    	submitHandler: function(form) {
    		$('#loginForm').load('LoginController',$("#loginForm").serialize());
    }
    });
});
</script>

<form id="loginForm" action="" method="POST">

      <input class="myTextBox" type="text"  value="${login.user}" placeholder="username" required/>
      <input class="myTextBox" type="password" placeholder="password"/>

<c:if test="${login.error[0] == 1}">
 Non existent username in our DB! 
</c:if>

 <input name="sumbit"  type="submit" value="GO!"> 

</form>