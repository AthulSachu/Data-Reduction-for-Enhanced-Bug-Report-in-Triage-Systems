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

@WebServlet("/GetRaisedCount")
public class GetRaisedCount extends HttpServlet {
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

            // Query to count total raised bugs
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT raised FROM rank");

            if (rs.next()) {
                int raisedCount = rs.getInt("raised");
                out.print(raisedCount);
            } else {
                out.print("0");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.print("Error fetching raised count");
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
