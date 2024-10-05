<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style5.css">
    <title>Bug Triage</title>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <script>
        $(function () {
            $("#datepicker-12").datepicker();
            $("#datepicker-12").datepicker("setDate", "10w+1");
        });
    </script>
</head>

<body>
    <div class="hero-img1"></div>
    <nav class="navbar navbar-expand-lg" style="font-size: larger;" aria-label="" aria-labbelledby="">
        <a class="navbar font-weight-bold">New Waves</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp" style="color: #111;">Home</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="mlog.jsp" style="color: #111;">Manager</a>

                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#" style="color: #111;">About</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#" style="color: #111;">Help Desk</a>
                </li>
            </ul>

            <ul class="navbar-nav justify-content-end">
                <li class="nav-item">
                    <a class="nav-link" href="new.jsp" style="color: #111;">Register</a>
                </li>
            </ul>
        </div>
    </nav>

    <section id="home" class="hero">
        <form action="Manager" method="post">
            <div class="login-form">
                <h1>Manager Login</h1>
                <div class="input-box">
                    <input type="text" placeholder="Manager ID" name="m1" required>
                </div>
                <div class="input-box">
                    <input type="password" placeholder="Password" name="m2" required>
                </div>
                <button type="submit" value="Login" class="btn">Login</button>

            </div>
        </form>


        <h1 id="he1">DATA REDUCTION FOR ENHANCED BUG REPORT IN TRIAGE SYSTEMS</h1><br>
        <ul>
            <li>
                <h5>Reduce the scale and improve the quality of bug data.</h5>
            </li>
            <li>
                <h5>Reduce data scale on the bug dimension and the word dimension</h5>
            </li>
        </ul>
        <button class="button1 my-3" type="button">
            <span class="button-text"><a href="index.jsp">Developer Login</a></span>
        </button>
        <button class="button2" type="button">
            <span class="button-text"><a href="red.jsp">Time Stamp</a></span>
        </button>


    </section>
    <section class="hero1">
        <div class="container-fluid">
            <div class="row">
                <!-- Left Column for Text -->
                <div class="col-sm-6 text-block" style="background-color: #000; height: 80vh;">
                    <h1 style="margin: 1em 0 0.5em 0.5em; color: #FFC700;" class="font-weight-bold">Workflow</h1>
                    <table class="workflow-table">
                        <tr>
                            <td class="workflow-section">
                                <span class="workflow-title">Developer Workflow</span>
                                <ul class="workflow-links">
                                    <li><a href="#">Developer Profiling</a></li>
                                    <li><a href="#">View Assigned Tokens</a></li>
                                    <li><a href="#">Resolve Assigned Issues</a></li>
                                    <li><a href="#">Raise New Issue</a></li>
                                    <li><a href="#">Access Portal</a></li>
                                </ul>
                            </td>
                            <td class="workflow-section">
                                <span class="workflow-title">Admin Workflow</span>
                                <ul class="workflow-links">
                                    <li><a href="#">Assign Bugs</a></li>
                                    <li><a href="#">Track Bug Status</a></li>
                                    <li><a href="#">Reduce Datasets</a></li>
                                    <li><a href="#">Close Issues</a></li>
                                </ul>
                            </td>
                        </tr>
                    </table>
                </div>

                <!-- Right Column for Image -->
                <div class="col-sm-6 image-block">
                    <h1 style="margin: 1em 0 0.5em 0.5em; color: #000;" class="font-weight-bold">Project Workflow</h1>
                    <span class="widt"> <img src="images/ghhh.JPG" alt="" width="700px" height="440px"> <span
                            class="tx_widt">
                            <br>
                        </span></span>
                </div>
            </div>
    </section>

</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>

</html>