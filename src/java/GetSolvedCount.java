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

@WebServlet("/GetSolvedCount")
public class GetSolvedCount extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection con = null;
        Statement stmt = null;
        PrintWriter out = response.getWriter();

        try {
            // Establish database connection
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/bugs", "root", "");

            // Query to count total resolved issues
            stmt = con.createStatement();
            // ResultSet rs = stmt.executeQuery("SELECT COUNT(*) AS total FROM rep WHERE
            // status='Resolved'");
            ResultSet rs = stmt.executeQuery("SELECT solved FROM rank");

            if (rs.next()) {
                int solvedCount = rs.getInt("solved");
                out.print(solvedCount);
            } else {
                out.print("0");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.print("Error fetching solved count");
        } finally {
            // Close resources
            try {
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
