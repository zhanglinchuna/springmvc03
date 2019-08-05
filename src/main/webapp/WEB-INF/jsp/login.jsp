<%--
  Created by IntelliJ IDEA.
  User: QAQAQ
  Date: 2019/8/5
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <script type="text/javascript" src="../../js/jquery-3.4.1.min.js"></script>

</head>
<body>

<form id="loginform" method="post" action="">
    <input type="hidden" id="j_username" name="username" value="autotest"/>
    <input type="hidden" id="j_password" name="password" value="666666"/>
</form>

<script type="text/javascript">
    var name = document.getElementById("j_username").value;
    var password = document.getElementById("j_password").value;

    jQuery.getJSON("http//localhost:8080/login",

        {
            username: name,
            password: password,
        },

        function (data) {
            alert(data.success);
        });
    /*$.ajax({
        url: '/login',
        type:'POST',
        success: function(data){
            alert("异步请求");
            alert(data.success)
        }
    });*/
</script>
<h3>login...</h3>
</body>
</html>
