<%--
  Created by IntelliJ IDEA.
  User: GaziA
  Date: 3/15/2018
  Time: 4:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ready to Explore</title>
    <link rel='stylesheet prefetch' href='${pageContext.request.contextPath}/Design/css/font1.css'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Design/css/style_login.css">
</head>
<body>

<div class="login-wrap">
    <div class="login-html">
        <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
        <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
        <div class="login-form">

            <form action="LoginServlet" method="post">
                <div class="sign-in-htm">
                    <div class="group">
                        <label for="user" class="label">Email</label>
                        <label>
                            <input type="text" class="input" name="userName">
                        </label>
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Password</label>
                        <label>
                            <input type="password" class="input" data-type="password" name="pass">
                        </label>
                    </div>
                    <div class="group">
                        <label>
                            <input type="checkbox" class="check" checked>
                        </label>
                        <label for="check"><span class="icon"></span> Keep me Signed in</label>
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="Sign In">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <a href="#forgot">Forgot Password?</a>
                    </div>
                </div>
            </form>

            <form action="SignUpConfirm" method="post">
                <div class="sign-up-htm">
                    <div class="group">
                        <label for="user" class="label">Username</label>
                        <input id="user" type="text" class="input" name="userName">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Password</label>
                        <label>
                            <input type="password" class="input" data-type="password" name="password">
                        </label>
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Repeat Password</label>
                        <label>
                            <input type="password" class="input" data-type="password">
                        </label>
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Email Address</label>
                        <input id="pass" type="text" class="input" name="email">
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="Sign Up">
                    </div>
                    <div class="group">
                        <input id="check" type="checkbox" class="check" checked>
                        <label for="check"><span class="icon"></span> I Agree <u>The Terms of Service</u></label>
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <label for="tab-1"><a>Already Member?</a></label>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>

</body>
</html>
