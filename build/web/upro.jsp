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
          <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
            rel="stylesheet">
          <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
            rel="stylesheet">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

          <!-- <link rel="stylesheet" href="css/style4.css"> -->
          <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
          <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
          <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
          <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
          <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
          <script>
            $(function () {
              $("#datepicker-12").datepicker();
              $("#datepicker-12").datepicker("setDate", "10w+1");
            });
          </script>
          <title>Bug Triage</title>

          <style>
            body {
              margin: 0;
              font-family: poppins, sans-serif;
              -webkit-font-smoothing: antialiased;
              -moz-osx-font-smoothing: grayscale;
              background-color: #f0f2f5;
            }

            .sidebar {
              width: 300px;
              background-color: #fff;
              padding: 10px;
              box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .sidebar h3 {
              margin-top: 0;
            }

            .sidebar ul {
              list-style: none;
              padding: 0;
            }

            .sidebar li {
              margin-bottom: 10px;
            }

            .sidebar a {
              display: block;
              padding: 10px;
              color: #333;
              text-decoration: none;
              border-radius: 4px;
              transition: background-color 0.3s;
            }

            .sidebar a:hover {
              background-color: #f0f0f0;
            }

            .content {
              min-height: 100vh;
              width: 100%;
            }

            .dashboard {
              background-color: #fff;
              padding: 20px;
              border-radius: 8px;
              box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .dashboard .date {
              margin-bottom: 10px;
            }

            .dashboard .welcome {
              margin-bottom: 20px;
            }

            .dashboard .button {
              display: inline-block;
              padding: 10px 20px;
              background-color: #2196F3;
              color: #fff;
              border: none;
              border-radius: 4px;
              cursor: pointer;
              transition: background-color 0.3s;
            }

            .dashboard .button:hover {
              background-color: #1976D2;
            }

            .dashboard .image {
              display: flex;
              justify-content: center;
              align-items: center;
              height: 300px;
            }

            .dashboard .image img {
              width: 50%;
            }

            .header {
              display: flex;
              align-items: center;
            }

            .icon {
              margin-right: 10px;
            }

            .icon img {
              width: 20px;
              height: 20px;
            }

            .user {
              margin-right: 20px;
            }

            .user img {
              width: 30px;
              height: 30px;
              border-radius: 50%;
            }

            .log {
              margin-top: 20em;
            }
          </style>
        </head>

        <% String group=(String)session.getAttribute("username"); %>

          <body>
            <div class="main-container d-flex">
              <div class="sidebar" id="side_nav">
                <div class="header-box px-2 pt-3 pb-4 d-flex justify-content-between">
                  <h4 class="fs-3"><span class=" px-2 me-2">Dev Dashboard</span></h4>
                  <button class="btn d-md-none d-block close-btn px-1 py-0 text-white"><i
                      class="fal fa-stream"></i></button>
                </div>

                <ul class="list-unstyled px-2">
                  <li class="active"><a href="tasks.jsp" class="text-decoration-none px-3 py-2 d-block"><i
                        class="fal fa-home"></i>
                      Assigned Tasks</a></li>
                  <li class=""><a href="open1.jsp"
                      class="text-decoration-none px-3 py-2 d-block d-flex justify-content-between">
                      <span><i class="fal fa-comment"></i> Community</span>
                    </a>
                  </li>
                  <li class=""><a href="comment.jsp" class="text-decoration-none px-3 py-2 d-block"><i
                        class="fal fa-envelope-open-text"></i> Comment</a></li>
                  <li class=""><a href="vi.jsp" class="text-decoration-none px-3 py-2 d-block"><i
                        class="fal fa-envelope-open-text"></i> View Blogs</a></li>

                </ul>
                <hr class="h-color mx-2">

                <ul class="list-unstyled px-2">
                  <li class=""><a href="index.jsp" class="log text-decoration-none px-3 d-block"><i
                        class="fal fa-bell"></i>
                      Logout</a></li>

                </ul>

              </div>

              <div class="content">
                <nav class="navbar navbar-expand-lg" style="font-size: larger;" aria-label="" aria-labbelledby="">
                  <a class="navbar font-weight-bold" style="font-size: 1.5em;">New Waves</a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>

                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">


                    </ul>

                    <ul class="navbar-nav justify-content-end">

                      <li class="nav-item active">
                        <a class="nav-link" href="#" style="color: #111;">
                          <div class="user">
                            <img src="https://img.icons8.com/ios-filled/50/000000/user-male.png" alt="User Icon">
                          </div>
                        </a>
                      </li>
                    </ul>
                  </div>
                </nav>
                <div class="dashboard-content px-3 pt-4">
                  <div class="dashboard">
                    <h2>Dashboard</h2>
                    <p class="date"><span id="current-date"></span></p>
                    <div class="welcome">
                      <h3>Welcome&nbsp<%=group %> your dashboard is ready!</h3>
                      <p>Great job, your dashboard is ready to go!</p>
                      <button class="button">Get Started</button>
                    </div>

                  </div>
                </div>
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

          </body>

        </html>