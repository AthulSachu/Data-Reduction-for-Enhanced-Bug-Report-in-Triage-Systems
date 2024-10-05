<!DOCTYPE html
  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.ResultSet" %>
  <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.Connection" %>
      <%@page import="java.sql.DriverManager" %>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/style4.css">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
        <title>NewWaves Enterprise</title>
        <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <script>
          $(function () {
            $("#datepicker-12").datepicker();
            $("#datepicker-12").datepicker("setDate", "10w+1");
          });
        </script>
        <script>
          $(function () {
            $("#datepicker-13").datepicker();
            $("#datepicker-13").datepicker("setDate", "10w+1");
          });
        </script>
        </head>

        <body>
          <div class="main-container d-flex">
            <div class="sidebar" id="side_nav">
              <div class="header-box px-2 pt-3 pb-4 d-flex justify-content-between">
                <h1 class="fs-4"><span class="text-white px-2 me-2">NewWaves</span></h1>
                <button class="btn d-md-none d-block close-btn px-1 py-0 text-white"><i
                    class="fal fa-stream"></i></button>
              </div>

              <ul class="list-unstyled px-2">
                <li class="active"><a href="assbugs.jsp" class="text-decoration-none px-3 py-2 d-block"><i
                      class="fal fa-home"></i>
                    Assign bugs</a></li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between">
                    <span><i class="fal fa-comment"></i> Status</span>
                  </a>
                </li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i
                      class="fal fa-envelope-open-text"></i> Repository</a></li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i class="fal fa-users"></i>
                    TimeStamp</a></li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i class="fal fa-users"></i>
                    Graph</a></li>
              </ul>
              <hr class="h-color mx-2">

              <ul class="list-unstyled px-2">
                <li class=""><a href="#" class="log text-decoration-none px-3 d-block"><i class="fal fa-bell"></i>
                    Logout</a></li>

              </ul>

            </div>

            <div class="content">
              <nav class="navbar navbar-expand-md">
                <div class="container-fluid">
                  <a class="navbar"
                    style="color: #FFC700; text-decoration: none; font-size: 1.5em; font-weight: 500;">Bug Triage</a>
                  <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                    <ul class="navbar-nav mb-2 mb-lg-0">
                      <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#" style="color: #FFC700;">Profile</a>
                      </li>

                    </ul>

                  </div>
                </div>
              </nav>
              <div class="dashboard-content px-3 pt-4">
                <h1 class="fs-7" style="font-weight: bold;"> TimeStamp</h1>
                <div id="right_block" class="my-5"> <span class="modul"> <span class="wel">
                      <h3>Instance Selection</h3>
                      <form action="red.jsp">
                        <%!String q,w,e,d,t; %>
                          <% String a=request.getParameter("z8"); String b=request.getParameter("z9");
                            if(a==null&&b==null) {%>
                            <table>
                              <tr>
                                <td>Select Start Date</td>
                                <td><input type="date" name="z8" id="datepicker-12" style="margin-left: 2em;"></td>
                              </tr>
                              <tr>
                                <td>Select End Date</td>
                                <td><input type="date" name="z9" id="datepicker-13" style="margin-left: 2em;"></td>
                              </tr>
                              <tr>
                                <td colspan="2" align="center"><button class="RegButton"
                                    style="margin-top: 1.5em; padding: 0.7em 2em 0 2em; "
                                    value="GetResults">Submit</button></td>
                              </tr>
                            </table>
                      </form>
                      <br></br>
                      <button class="button1" type="button" href="mlog.html" style="margin-left: 4.4em;">
                        <span class="button-text"><a href="manager1.jsp"
                            style="text-decoration: none; color: #111;">Click Here to go
                            back</a></span>
                      </button>
                      <%} else { Connection con=null; Class.forName("com.mysql.jdbc.Driver"); con=(Connection)
                        DriverManager.getConnection("jdbc:mysql://localhost/bugs","root",""); Statement st;
                        st=con.createStatement(); %>
                        <table class="table" style="margin-top: 2em;">
                          <thead class="thead-dark">
                            <thead class="thead-dark">
                              <tr class="thdark">
                                <th scope="col">Bug Name</th>
                                <th scope="col">Bug Description</th>
                                <th scope="col">Triage</th>
                                <th scope="col">Assigned To</th>
                                <th scope="col">Date</th>
                              </tr>
                            </thead>


                            <% String sql="SELECT * FROM rep WHERE DATE BETWEEN '" +a+"' AND '"+b+"'";
                                ResultSet r=st.executeQuery(sql);
                                while(r.next())
                                {

                                q=r.getString(2);
                                w=r.getString(3);
                                e=r.getString(4);
                                d=r.getString(5);
                                t=r.getString(6);

                            %> 

                            <%%>
                            <tr><td><%=q %></td><td><%=w %></td><td><%=e %></td><td><%=d %></td><td><%=t %></td></tr>
                            <%} 
                            %>
                          </table>
                          <center>
                            <button class=" button1" type="button">
                              <span class="button-text"><a href="manager1.jsp"
                                  style="text-decoration: none; color: #111;">Click Here to go
                                  back</a></span>
                              </button>

                              </center>

                              <% }%>

                </div>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
                <script>
                  $(".sidebar ul li").on('click', function () {
                    $(".sidebar ul li.active").removeClass('active');
                    $(this).addClass('active');
                  });

                  $('.open-btn').on('click', function () {
                    $('.sidebar').addClass('active');

                  });


                  $('.close-btn').on('click', function () {
                    $('.sidebar').removeClass('active');

                  })
                </script>
              </div>

              </html>