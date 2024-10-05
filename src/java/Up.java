

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
 * Servlet implementation class Up
 */
@WebServlet("/Up")
public class Up extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Up() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String h=request.getParameter("s1");
		String f="Resolved";
		System.out.println(h);
		Connection con=null;
		Connection con1=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bugs","root","");
			con1 = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bugs","root","");
			HttpSession session=request.getSession();
			String er=(String) session.getAttribute("err");
			System.out.println("session value is---->"+er);
			Statement st=con.createStatement();
			Statement st1=con1.createStatement();
			String sql= "update sln set solution='"+h+"' where err='"+er+"' ";
			int rs = st.executeUpdate(sql);
			String sql1= "update rep set status='"+f+"' where name='"+er+"' ";
			int rs1 = st1.executeUpdate(sql1);
			
			Statement st2=con1.createStatement();
			String sql5="select * from rank";
			ResultSet y=st2.executeQuery(sql5);
			if(y.next())
			{
				int r=y.getInt(2);
				int f1=r+1;
				String sql10= "update rank set solved='"+f1+"'";
				int rsq=st2.executeUpdate(sql10);
			}
			
			RequestDispatcher rd=request.getRequestDispatcher("upro.jsp");
			rd.include(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

