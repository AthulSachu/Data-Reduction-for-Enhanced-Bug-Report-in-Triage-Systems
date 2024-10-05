import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetTotalUsersCount")
public class GetTotalUsersCount extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        PrintWriter out = response.getWriter();

        try {
            // Establish database connection
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/bugs", "root", "");

            // Query to count total registered users
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT COUNT(*) AS total FROM users");

            if (rs.next()) {
                int totalCount = rs.getInt("total");
                out.print(totalCount);
            } else {
                out.print("0");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.print("Error fetching total count");
        } finally {
            // Close resources
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
