<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="DataLayer.MyDB" %>
<%@ page import="java.sql.Connection" %><%--
  Created by IntelliJ IDEA.
  User: GaziA
  Date: 3/15/2018
  Time: 6:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Explore Where To Go</title>
    <link rel="stylesheet" href="Design/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon"
          type="image/png"
          href="Design/css/img/Asset%202.png">
</head>
<body>

<div class="back">
    <div class="logo">
        <div class="navbar">
            <nav>
                <img src="Design/css/img/Asset%202.png" alt="">
                <div class="nav">
                    <ul class="login">
                        <li>
                            <form class="log" action="LogoutServlet" method="get">
                                <input type="submit" value="Logout">
                            </form>
                        </li>
                    </ul>
                    <form class="form">
                        <label>
                            <input type="search">
                        </label>
                    </form>
                    <div class="rnavs">
                        <ul>
                            <li><a href="#">Latest Offer</a></li>
                            <li><a href="#">Travel Information</a></li>
                            <li><a href="#">Flight Booking</a></li>
                            <li><a href="#">Manage</a></li>
                            <li><a href="#">Discover</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="box">
            <div class="text"><p>
                <br> <strong>Hello !<br>Where Do You Want To Explore</strong>
            </p><br>
                <div class="input">

                    <form class="inside" action="${pageContext.request.contextPath}/BookFlight" method="post">
                        <label>
                            <select name="FromCity" class="form-select-button" style="width: 100px">
                                <option value="-1">From City</option>
                                <%
                                    try {
                                        Connection connection=MyDB.base();
                                        String Query = "SELECT * FROM epic_airline.bookflight";
//                                        Class.forName("com.mysql.jdbc.Driver");
//                                        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/epic_airline", "root", "epic");
                                        Statement statement = connection.createStatement();
                                        ResultSet resultSet = statement.executeQuery(Query);
                                        while (resultSet.next()) {
                                %>

                                <option><%= resultSet.getString("FromCity")%>
                                </option>
                                <%
                                        }

                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        out.println("Error " + e.getMessage());
                                    }
                                %>
                            </select>
                        </label>

                        <label>
                            <select name="ToCity" class="form-select-button" style="width: 100px">
                                <option value="-1">To City</option>
                                <%
                                    try {
                                        String Query = "SELECT * FROM epic_airline.bookflight";
                                        Connection connection=MyDB.base();

//                                        Class.forName("com.mysql.jdbc.Driver");
//                                        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/epic_airline", "root", "epic");
                                        Statement statement = connection.createStatement();
                                        ResultSet resultSet = statement.executeQuery(Query);
                                        while (resultSet.next()) {
                                %>
                                <option>
                                    <%= resultSet.getString("ToCity")%>
                                </option>
                                <%
                                        }

                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        out.println("Error " + e.getMessage());
                                    }
                                %>
                            </select>
                        </label>

                        <label>
                            <input type="date" name="date">
                        </label>

                        <label>
                            <select name="Plane" class="form-select-button" style="width: 100px">
                                <option value="-1">Plane</option>
                                <%
                                    try {
                                        String Query = "SELECT * FROM epic_airline.bookflight";
                                        Connection connection=MyDB.base();

//                                        Class.forName("com.mysql.jdbc.Driver");
//                                        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/epic_airline", "root", "epic");
                                        Statement statement = connection.createStatement();
                                        ResultSet resultSet = statement.executeQuery(Query);
                                        while (resultSet.next()) {
                                %>
                                <option>
                                    <%= resultSet.getString("Plane")%>
                                </option>
                                <%
                                        }

                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        out.println("Error " + e.getMessage());
                                    }
                                %>
                            </select>
                        </label>
                        <label>
                            <select name="Cabin" class="form-select-button" style="width: 100px">
                                <option value="-1">Cabin</option>
                                <%
                                    try {
                                        String Query = "SELECT * FROM epic_airline.bookflight";
                                        Connection connection=MyDB.base();

//                                        Class.forName("com.mysql.jdbc.Driver");
//                                        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/epic_airline", "root", "epic");
                                        Statement statement = connection.createStatement();
                                        ResultSet resultSet = statement.executeQuery(Query);
                                        while (resultSet.next()) {
                                %>
                                <option>
                                    <%= resultSet.getString("Cabin")%>
                                </option>
                                <%
                                        }

                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        out.println("Error " + e.getMessage());
                                    }
                                %>
                            </select>
                            <div><input type="submit" value="Submit"></div>

                        </label>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="sec3">
        <div class="exp">
        </div>
        <div class="gallery">
        </div>
        <div class="subscribe">
            <img src="Design/css/img/web-page4.png" alt="">
        </div>
        <div class="footer">
            <img src="Design/css/img/web-page5.png" alt="">
        </div>
    </div>
    <script> src = "https://cdnjs.cloudflare.com/ajax/libs/smooth-scrollbar/8.2.6/smooth-scrollbar.js"</script>
    <script> src = "https://cdnjs.cloudflare.com/ajax/libs/smooth-scrollbar/8.2.6/plugins/overscroll.js"</script>

</div>

<%
    //for clare cache memory, because (after logout, user not find this page by back button
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");  //HTTP 1.1

    response.setHeader("Pragma", "no-cache"); //HTTP 1.0

    response.setHeader("Expires", "0");     //for proxy browser

    //this session check, is user login. if not. it throw again login page
    if (session.getAttribute("uName")==null){
        response.sendRedirect("login_signup.jsp");
    }
    // use this session on any page, that only can view by valid user
%>
</body>
</html>
