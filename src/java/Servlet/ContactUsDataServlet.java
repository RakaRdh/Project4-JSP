package Servlet;

import Database.DbConnection;
import Model.ContactUs;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContactUsDataServlet")
public class ContactUsDataServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        List<ContactUs> contactList = new ArrayList<>();
        try (Connection connection = new DbConnection().setConnection()) {
            String sql = "SELECT Nama, Email, PhoneNumber, Domisili, Pesan FROM contactus_tbl";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                ContactUs cu = new ContactUs();
                cu.setName(resultSet.getString("Nama"));
                cu.setEmail(resultSet.getString("Email"));
                cu.setPhone(resultSet.getString("PhoneNumber"));
                cu.setDomicile(resultSet.getString("Domisili"));
                cu.setMessage(resultSet.getString("Pesan"));
                contactList.add(cu);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("contactList", contactList);
        request.getRequestDispatcher("Admin_DataContactUs.jsp").forward(request, response);
    }
}
