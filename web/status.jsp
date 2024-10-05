<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.ResultSet" %>
    <%@page import="java.sql.Statement" %>
        <%@page import="java.sql.Connection" %>
            <%@page import="java.sql.DriverManager" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <link
                        href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
                        rel="stylesheet">
                    <link
                        href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
                        rel="stylesheet">
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
                        rel="stylesheet" />
                    <link rel="stylesheet" href="css/style4.css">
                    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
                    <title>NewWaves Enterprise</title>
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
                                <li class="active"><a href="assbugs.jsp"
                                        class="text-decoration-none px-3 py-2 d-block"><i class="fal fa-home"></i>
                                        Assign bugs</a></li>
                                <li class=""><a href="#"
                                        class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between">
                                        <span><i class="fal fa-comment"></i> Status</span>
                                    </a>
                                </li>
                                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i
                                            class="fal fa-envelope-open-text"></i> Repository</a></li>
                                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i
                                            class="fal fa-users"></i>
                                        TimeStamp</a></li>
                                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i
                                            class="fal fa-users"></i>
                                        Graph</a></li>
                            </ul>
                            <hr class="h-color mx-2">

                            <ul class="list-unstyled px-2">
                                <li class=""><a href="#" class="log text-decoration-none px-3 d-block"><i
                                            class="fal fa-bell"></i>
                                        Logout</a></li>

                            </ul>

                        </div>

                        <div class="content">
                            <div class="dashboard-content px-3 pt-4">
                                <h1 class="fs-7" style="font-weight: bold;"> Status</h1>
                                <div id="right_block"> <span class="modul"> <span class="wel">
                                            <table class="table" style="margin-top: 2em;">
                                                <thead class="thead-dark">
                                                    <tr class="thdark">
                                                        <th scope="col" style="color: #111;">---------</th>
                                                        <th scope="col">Assigned To</th>
                                                        <th scope="col">Priority</th>
                                                        <th scope="col">Status Report</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <% Connection con=null; Class.forName("com.mysql.jdbc.Driver");
                                                        con=(Connection)
                                                        DriverManager.getConnection("jdbc:mysql://localhost/bugs","root","");
                                                        Statement st; st=con.createStatement(); String
                                                        sql="select * from rep" ; ResultSet rs=st.executeQuery(sql);
                                                        while(rs.next()) { String c=rs.getString(5); String
                                                        w=rs.getString(4); String d=rs.getString(7); %>
                                                        <tr>
                                                            <th scope="row">></th>
                                                            <td>
                                                                <%=c%>
                                                            </td>
                                                            <td>
                                                                <%=w %>
                                                            </td>
                                                            <td>
                                                                <%=d %>
                                                            </td>
                                                        </tr>
                                                        <%} %>
                                                </tbody>
                                            </table>

                                </div>
                                <center>
                                    <button class=" button1" type="button">
                                        <span class="button-text"><a href="manager1.jsp"
                                                style="text-decoration: none; color: #111;">Click Here to go
                                                back</a></span>
                                    </button>
                                </center>

                            </div>
                        </div>

                        <script
                            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
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
                </body>

                </html>