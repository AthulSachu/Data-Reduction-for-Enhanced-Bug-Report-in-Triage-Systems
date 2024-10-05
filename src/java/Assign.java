

import java.io.IOException;
import java.io.PrintWriter;
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

/**
 * Servlet implementation class Assign
 */
@WebServlet("/Assign")
public class Assign extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Assign() {
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
Connection con=null;
Connection con1=null;
		String sln=null;
		String a=request.getParameter("b1");
		String b=request.getParameter("b2");
		String c=request.getParameter("b3");
		String d=request.getParameter("b4");
		String e=request.getParameter("z7");
		String h=request.getParameter("q");
	System.out.println(a);
	System.out.println(b);
	System.out.println(c);
	System.out.println(d);
	System.out.println(e);
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bugs","root","");
			con1 = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bugs","root","");
			Statement st;
			Statement st1;
		
		
			st = con.createStatement();
			st1 = con1.createStatement();
			
		System.out.println("trying to insert");
			
		String sql= "INSERT INTO rep (name,de,tri,assign,date,status) VALUES ('"+a+"','"+b+"','"+h+"','"+c+"','"+e+"','"+d+"')";
		int rs = st.executeUpdate(sql);
		String x="waiting";
		String sql1= "INSERT INTO sln (err,de,triage,solution) VALUES ('"+a+"','"+b+"','"+h+"','"+x+"')";
		int rs1 = st1.executeUpdate(sql1);	
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bugs","root","root");
			Statement st2;
			st2 = con1.createStatement();
			
			String sql2= "select * from rank";
			ResultSet r=st2.executeQuery(sql2);
			 PrintWriter out = response.getWriter();
			if(r.next())
			{
				int mine=r.getInt(1);
				int qwe=mine+1;
				String sql3= "update rank set raised='"+qwe+"'";
				int rsq=st2.executeUpdate(sql3);
				out.println("<script type=\"text/javascript\">"); 			
				out.println("alert(\"New Bug Raised\")");

				out.println("</script>"); 
				
			}
			else
			{
				System.out.println("cant connect DB");
			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
				RequestDispatcher rd=request.getRequestDispatcher("assbugs.jsp");
				rd.include(request, response);
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		
	}

}