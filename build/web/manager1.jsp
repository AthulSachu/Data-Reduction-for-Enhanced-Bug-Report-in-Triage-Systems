<!DOCTYPE html
  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
  <link rel="stylesheet" href="css/style6.css">
  <title>Bug Triage</title>
</head>

<body>
  <nav class="navbar navbar-expand-lg" style="font-size: larger; background-color: #000; color: #FFC700;" aria-label=""
    aria-labbelledby="">
    <a class="navbar font-weight-bold">New Waves</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">

      </ul>

      <ul class="navbar-nav justify-content-end">
        <button class=" button1" type="button">
          <span class="button-text"><a href="index.jsp"
              style="text-decoration: none; color: #111; margin-left: 1em;">Logout</a></span>
        </button>
      </ul>
    </div>
  </nav>

  <section class="hero">
    <h2 style="font-weight: bold; color: #000; margin-bottom: 1em;">Manager Panel</h2>

    <div class="row">

      <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-info">
          <div class="inner">
            <h2 id="totalUsers" style="font-size: 2.5em; font-weight: bold;"></h2>
            <p>Total Registered Users</p>


            <script type="text/javascript">
              // JavaScript code to fetch and display total count
              fetchTotalUsersCount();

              function fetchTotalUsersCount() {
                // AJAX request to fetch total count from the server
                var xhr = new XMLHttpRequest();
                xhr.open("GET", "GetTotalUsersCount", true);  // Assuming you have a servlet mapping for GetTotalUsersCount
                xhr.onreadystatechange = function () {
                  if (xhr.readyState === 4 && xhr.status === 200) {
                    document.getElementById("totalUsers").innerText = xhr.responseText;
                  }
                };
                xhr.send();
              }
            </script>
          </div>
          <div class="icon">
          </div>
          <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->

      <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-success">
          <div class="inner">

            <h2 id="solvedCount" style="font-size: 2.5em; font-weight: bold; "></h2>
            <p>Number of Solved Issues</p>
            <script type="text/javascript">
              // JavaScript code to fetch and display the number of solved issues
              fetchSolvedCount();

              function fetchSolvedCount() {
                // AJAX request to fetch solved count from the server
                var xhr = new XMLHttpRequest();
                xhr.open("GET", "GetSolvedCount", true);  // Assuming you have a servlet mapping for GetSolvedCount
                xhr.onreadystatechange = function () {
                  if (xhr.readyState === 4 && xhr.status === 200) {
                    document.getElementById("solvedCount").innerText = xhr.responseText;
                  }
                };
                xhr.send();
              }
            </script>
          </div>
          <div class="icon">

          </div>
          <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->

      <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-warning">
          <div class="inner">

            <h2 id="raisedCount" style="font-size: 2.5em; font-weight: bold; "></h2>
            <p>Number of Raised Bugs</p>
            <script type="text/javascript">
              // JavaScript code to fetch and display the number of raised bugs
              fetchRaisedCount();

              function fetchRaisedCount() {
                // AJAX request to fetch raised count from the server
                var xhr = new XMLHttpRequest();
                xhr.open("GET", "GetRaisedCount", true);  // Assuming you have a servlet mapping for GetRaisedCount
                xhr.onreadystatechange = function () {
                  if (xhr.readyState === 4 && xhr.status === 200) {
                    document.getElementById("raisedCount").innerText = xhr.responseText;
                  }
                };
                xhr.send();
              }
            </script>
          </div>
          <div class="icon">

          </div>
          <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->

      <!-- ./col -->
    </div>

    <h2 style="font-weight: bold; color: #000; margin: 1em 0;">Workflow</h2>
    <div class="row">

      <div class="col-lg-2 col-6">
        <!-- small box -->
        <div class="small-box" style="background: #000;">
          <div class="inner">
            <h3 style="color: #FFC700;">Assign Bugs</h3>
          </div>
          <div class="icon">

          </div>
          <a href="assbugs.jsp" class="small-box-footer">Click here <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>

      <div class="col-lg-2 col-6">
        <!-- small box -->
        <div class="small-box" style="background: #000;">
          <div class="inner">
            <h3 style="color: #FFC700;">Status</h3>
          </div>
          <div class="icon">

          </div>
          <a href="status.jsp" class="small-box-footer">Click here <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>

      <div class="col-lg-2 col-6">
        <!-- small box -->
        <div class="small-box" style="background: #000;">
          <div class="inner">
            <h3 style="color: #FFC700;">Repository</h3>
          </div>
          <div class="icon">

          </div>
          <a href="repo.jsp" class="small-box-footer">Click here <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>

      <div class="col-lg-2 col-6">
        <!-- small box -->
        <div class="small-box" style="background: #000;">
          <div class="inner">
            <h3 style="color: #FFC700;">TimeStamp</h3>
          </div>
          <div class="icon">

          </div>
          <a href="red.jsp" class="small-box-footer">Click here <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>

      <div class="col-lg-2 col-6">
        <!-- small box -->
        <div class="small-box" style="background: #000;">
          <div class="inner">
            <h3 style="color: #FFC700;">Raised Bug</h3>
          </div>
          <div class="icon">

          </div>
          <a href="bug.jsp" class="small-box-footer">Click here <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>

      <div class="col-lg-2 col-6">
        <!-- small box -->
        <div class="small-box" style="background: #000;">
          <div class="inner">
            <h3 style="color: #FFC700;">Graph</h3>
          </div>
          <div class="icon">

          </div>
          <a href="graph.jsp" class="small-box-footer">Click here <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>

    </div>
  </section>

</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


</html>