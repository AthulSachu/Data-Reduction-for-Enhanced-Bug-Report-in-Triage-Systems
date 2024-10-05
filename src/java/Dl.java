
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Dl
 */
@WebServlet("/Dl")
public class Dl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Dl() {
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
		Connection con = null;
		HttpSession session = request.getSession();

		String a = request.getParameter("a1");
		String b = request.getParameter("a2");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bugs", "root", "");
			Statement st = con.createStatement();
			String sql = "SELECT * FROM users WHERE id='" + a + "' AND pass='" + b + "'";
			ResultSet rs = st.executeQuery(sql);

			if (rs.next()) {
				String o = rs.getString(1);
				String m = rs.getString(2);
				String n = rs.getString(3);

				if (a.equals(o) && b.equals(m)) {
					System.out.println("working");
				}

				System.out.println("umane---->" + n);
				System.out.println("mail id---->" + m);

				request.getSession(true).setAttribute("username", n);
				RequestDispatcher rd = request.getRequestDispatcher("upro.jsp");
				rd.include(request, response);
			} else {
				// If no matching user found, show JavaScript alert
				String errorMessage = "Invalid username or password!";
				String script = "<script type='text/javascript'>alert('" + errorMessage + "');</script>";
				response.getWriter().write(script);
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.include(request, response);
			}

		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
