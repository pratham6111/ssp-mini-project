package pack1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;

@WebServlet("/BillServlet")
public class BillServlet extends HttpServlet {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/project";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "PYM@123$";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double previousReading = Double.parseDouble(request.getParameter("previousReading"));
        double currentReading = Double.parseDouble(request.getParameter("currentReading"));
        String meter_no = request.getParameter("meter_no"); // New parameter as a string

        double ratePerUnit = 7.5;  // Change this rate as needed
        double unitsConsumed = currentReading - previousReading;
        double billAmount = unitsConsumed * ratePerUnit;

        // Store the bill information in the database
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            String sql = "INSERT INTO meter_readings (previous_reading, current_reading, units_consumed, rate_per_unit, bill_amount, meter_no) VALUES (?, ?, ?, ?, ?, ?)"; // Updated SQL
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setDouble(1, previousReading);
            preparedStatement.setDouble(2, currentReading);
            preparedStatement.setDouble(3, unitsConsumed);
            preparedStatement.setDouble(4, ratePerUnit);
            preparedStatement.setDouble(5, billAmount);
            preparedStatement.setString(6, meter_no); // Set meter_no as a string

            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                // Successful bill calculation and storage
                response.sendRedirect("success.jsp"); // Redirect to a success page
            } else {
                // Bill calculation or storage failed
                response.sendRedirect("error.jsp"); // Redirect to an error page
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Redirect to an error page
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
    }
}

