
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Reg
 */
@WebServlet("/Reg")
public class Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Reg() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Entered into the servlet");

		String prefix = "VLSA@";
		long randomNumber = Math.round(Math.random() * 89999) + 10000;
		String id = prefix + randomNumber;

		Connection con = null;
		PrintWriter out = response.getWriter();
		PreparedStatement pst = null;

		// Retrieve form parameters
		String name = request.getParameter("z1");
		String age = request.getParameter("z2");
		String dob = request.getParameter("z3");
		String email = request.getParameter("z4");
		String country = request.getParameter("z5");
		String state = request.getParameter("z6");
		String mobile = request.getParameter("z7");
		String designation = request.getParameter("z9");
		String xz = request.getParameter("z12");

		try {
			// Load JDBC driver and establish connection
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/bugs", "root", "");

			// Prepare SQL statement
			String sql = "INSERT INTO users (id, pass, name, age, desi, dob, email, country, state, mobile) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pst = con.prepareStatement(sql);
			pst.setString(1, id);
			pst.setString(2, xz);
			pst.setString(3, name);
			pst.setString(4, age);
			pst.setString(5, designation);
			pst.setString(6, dob);
			pst.setString(7, email);
			pst.setString(8, country);
			pst.setString(9, state);
			pst.setString(10, mobile);

			// Execute the SQL statement
			int rowsAffected = pst.executeUpdate();

			if (rowsAffected > 0) {
				// Registration successful

				// Query to count total registered users
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT COUNT(*) AS total FROM users");
				int totalCount = 0;
				if (rs.next()) {
					totalCount = rs.getInt("total");
				}

				out.println("<script type=\"text/javascript\">");
				out.println("alert(\"You are registered successfully to our portal. Your Employee ID is " + id
						+ ". Total registered users: " + totalCount + "\");");
				out.println("</script>");

				// Redirect to index.jsp after displaying the alert
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.include(request, response);
			} else {
				// Registration failed
				out.println("<script type=\"text/javascript\">");
				out.println("alert(\"Registration failed. Please try again.\");");
				out.println("</script>");

				// Redirect back to the registration page (adjust as per your application flow)
				RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
				rd.include(request, response);
			}

		} catch (ClassNotFoundException | SQLException e) {
			// Handle exceptions
			e.printStackTrace();
			out.println("<script type=\"text/javascript\">");
			out.println("alert(\"An error occurred. Please try again later.\");");
			out.println("</script>");

			// Redirect back to the registration page (adjust as per your application flow)
			RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
			rd.include(request, response);
		} finally {
			// Close resources
			try {
				if (pst != null) {
					pst.close();
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
