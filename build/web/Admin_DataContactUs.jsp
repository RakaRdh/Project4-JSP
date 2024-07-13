<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="HeaderAdmin.jsp" %>
<%@page import="Model.ContactUs" %>
<%@page import="java.util.*" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin Page</title>
    <link rel="stylesheet" href="CSS/AdminStyle.css">
</head>
<body>
    <div class="main-content">
        <div class="content-title">
            <h1>Data Contact Us</h1>
        </div>
        <table border="1">
            <tr>
                <th>Nama</th>
                <th>Email</th>
                <th>No. Telp</th>
                <th>Domisili</th>
                <th>Pesan</th>
            </tr>
            <%
                ArrayList<ContactUs> contactList = (ArrayList<ContactUs>) request.getAttribute("contactList");
                if (contactList != null) {
                    for (ContactUs cu : contactList) {
            %>
            <tr>
                <td class="isi-td"><%= cu.getName()%></td>
                <td class="isi-td"><%= cu.getEmail()%></td>
                <td class="isi-td"><%= cu.getPhone()%></td>
                <td class="isi-td"><%= cu.getDomicile()%></td>
                <td class="konten-td"><%= cu.getMessage().replace("\n","<br>")%></td>
            </tr>
            <% 
                    }
                } 
            %>
        </table>
    </div>
</body>
</html>
<%@include file="Footer.jsp" %>