<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: GaziA
  Date: 3/12/2018
  Time: 10:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/BookFlight" method="post">
    <label>
        <select name="FromCity" class="form-select-button" style="width: 100px">
            <option value="-1">From City</option>
            <%
                try {
                    String Query = "SELECT * FROM epic_airline.bookflight";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/epic_airline", "root", "epic");
                    Statement statement = connection.createStatement();
                    ResultSet resultSet = statement.executeQuery(Query);
                    while (resultSet.next()) {
            %>

            <option ><%= resultSet.getString("FromCity")%>
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
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/epic_airline", "root", "epic");
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
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/epic_airline", "root", "epic");
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
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/epic_airline", "root", "epic");
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
        <input type="submit" value="Submit">
    </label>
</form>
</body>
</html>
