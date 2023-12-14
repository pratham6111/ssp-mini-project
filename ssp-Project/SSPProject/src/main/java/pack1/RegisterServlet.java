package pack1;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter; // Added for response output
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet; // Added to check if meter_no exists
import java.sql.SQLException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/project";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "PYM@123$";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String meter_no = request.getParameter("meter_no");

        // Validate the username, password, and meter_no
        if (username != null && !username.isEmpty() && password != null && !password.isEmpty() && meter_no != null && !meter_no.isEmpty()) {
            Connection connection = null;
            PreparedStatement preparedStatement = null;

            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

                // Check if the meter_no is already registered
                String checkSql = "SELECT * FROM users WHERE meter_no = ?";
                preparedStatement = connection.prepareStatement(checkSql);
                preparedStatement.setString(1, meter_no);
                ResultSet resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                    // Meter is already registered
                    // You can handle this case as you prefer; for now, let's print a message
                    PrintWriter out = response.getWriter();
                    out.println("<font color=red size=18>Your meter is already registered!</font><br>");
                    out.println("<a href=login.jsp>Try Again</a>");
                } else {
                    // Meter is not registered, so proceed with registration
                    String sql = "INSERT INTO users (username, password, meter_no) VALUES (?, ?, ?)";
                    preparedStatement = connection.prepareStatement(sql);
                    preparedStatement.setString(1, username);
                    preparedStatement.setString(2, password);
                    preparedStatement.setString(3, meter_no);

                    // Execute the SQL query
                    int rowsAffected = preparedStatement.executeUpdate();

                    if (rowsAffected > 0) {
                        // User registration successful
                        // Redirect to a success page or login page
                        String jspPage = "login.jsp"; // Replace with the actual JSP page name
                        response.sendRedirect(jspPage);
                    } else {
                        // Handle other errors if needed
                    }
                }
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                // Handle database connection errors
            } finally {
                try {
                    if (preparedStatement != null) {
                        preparedStatement.close();
                    }
                    if (connection != null) {
                        connection.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                    // Handle database connection closing errors
                }
            }
        } else {
            // Invalid input; show an error message or redirect to the registration page
            PrintWriter out = response.getWriter();
            out.println("<font color=red size=18>Invalid input. Please try again.</font><br>");
            out.println("<a href=registration.jsp>Try Again</a>");
        }
    }
}
