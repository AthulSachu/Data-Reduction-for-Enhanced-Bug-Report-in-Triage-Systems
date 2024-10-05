

import java.io.File;
import java.io.IOException;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.awt.BasicStroke;
import java.awt.Color;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartRenderingInfo;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.entity.StandardEntityCollection;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.jdbc.JDBCPieDataset;

import java.io.OutputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection; 
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Xx
 */
@WebServlet("/xxxx")
public class xxxx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xxxx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		String u=request.getParameter("p1");
		System.out.println("the Product is---->"+u);
		
		 try {
			   Connection con=null;
			   Class.forName("com.mysql.jdbc.Driver");
				con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bugs","root","");
				Statement st;
				st = con.createStatement();
			   String s="hp";
			   System.out.println(s);
			  String r="Total Bugs Raised";
			  String r1="Total Bugs Resolved";
		
			   System.out.println("statement done");
			   String sql="select * from rank ";
				ResultSet rs=st.executeQuery(sql);
				String a = "Final Report";
				int b = 0;
				int c = 0;
				if(rs.next())
				{
					
					b=rs.getInt(1);
					c=rs.getInt(2);
				}
				 final DefaultCategoryDataset dataset = new DefaultCategoryDataset( ); 
				 dataset.addValue( b , a , r );              
			      dataset.addValue( c , a , r1 );  
			      JFreeChart barChart = ChartFactory.createBarChart3D(
			    	         "Bug Report",             
			    	         "Category",             
			    	         "Score",             
			    	         dataset,            
			    	         PlotOrientation.VERTICAL,             
			    	         true, true, false);
			    	         
			    	      int width = 640; /* Width of the image */              
			    	      int height = 480; /* Height of the image */                              
			    	      File barChart3D = new File( "D:\\Final Year Project\\Java\\data reduction for enhanced bug report in triage systems\\Source Code\\SRC\\web\\graph\\graphe.jpeg" );
			    	      
			    	      ChartUtilities.saveChartAsJPEG( barChart3D, barChart, width, height);
			    	 
							RequestDispatcher rd=request.getRequestDispatcher("disp.jsp");
							rd.include(request, response);
		 }
	 catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}   
   }

				
		
		
		
		
		
		
		
		
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
