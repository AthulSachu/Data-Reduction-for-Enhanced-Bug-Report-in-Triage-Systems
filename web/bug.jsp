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
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
          <link rel="stylesheet" href="css/style4.css">
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
        </head>

        <body>
          <div class="main-container d-flex">
            <div class="sidebar" id="side_nav">
              <div class="header-box px-2 pt-3 pb-4 d-flex justify-content-between">
                <h1 class="fs-4"><span class="text-white px-2 me-2">Manager Panel</span></h1>
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
                <li class=""><a href="index.jsp" class="log text-decoration-none px-3 d-block"><i
                      class="fal fa-bell"></i>
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
              <div class="dashboard-content px-3">
                <h1 class="fs-7" style="font-weight: bold;"> Assign Bugs</h1>
                <div id="right_block"> <span class="modul"> <span class="wel">
                      <form action="Bugup" method="post">
                        <table class="my-3" borer="1">

                          <tr>
                            <td>Bug Name</td>
                            <td><input type="text" name="b1"></input></td>
                          </tr>
                          <tr>
                            <td>Bug Description</td>
                            <td><input type="text" name="b2" style="width: 50em;
                              height: 150px;
                              padding: 12px 20px;
                              box-sizing: border-box;
                              border: 2px solid #FFC700;
                              border-radius: 4px;
                              background-color: #fff;
                              resize: none;"></input></td>
                          </tr>
                          <tr>
                            <td>Bug Triage</td>
                            <td>
                              <input type="text" name="b3"></input>
                            </td>
                          </tr>

                          <tr>
                            <td align="center" colspan="2"><button class="RegButton"
                                style="margin-top: 1.5em; padding: 0.7em 2em 0 2em;">Submit</button>
                            </td>
                          </tr>

                        </table>
                      </form>
                </div>
                <button class=" button1" type="button" style="margin-left: 4.4em;">
                  <span class="button-text"><a href="manager1.jsp" style="text-decoration: none; color: #111; ">Click
                      Here to go back</a></span>
                </button>
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