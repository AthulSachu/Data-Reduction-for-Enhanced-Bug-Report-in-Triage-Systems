<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style5.css">
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
    <title>NewWaves Enterprise</title>
</head>

<body>
    <div class="hero-img2"></div>
    <nav class="navbar sticky-top navbar-expand-lg" style="font-size: larger;" aria-label="" aria-labbelledby="">
        <a class="navbar font-weight-bold" style="color: #fff;">NewWaves</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp" style="color: #fff;">Home</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#" style="color: #fff;">Manager</a>

                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#" style="color: #fff;">About</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#" style="color: #fff;">Help Desk</a>
                </li>
            </ul>

            <ul class="navbar-nav justify-content-end">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp" style="color: #111;">Developer Login</a>
                </li>
            </ul>

        </div>
    </nav>
    <div id="sub_block1">
        <!--Content Block Starts -->
        <div id="content_block">
            <!--Left Block Starts -->
            <form action="Reg" method="post">
                <fieldset style="margin-left: 60em; margin-top: 2em;">
                    <h2 style="color: #111;">Personal Information:</h2>
                    <table id="t1">
                        <tr>
                            <td>Name:</td>
                            <td> <input type="text" name="z1"></input></td>
                        </tr>
                        <tr>
                            <td>Desired Password:</td>
                            <td> <input type="password" name="z12"></input></td>
                        </tr>
                        <tr>
                            <td>Age:</td>
                            <td> <input type="text" name="z2"></input></td>
                        </tr>
                        <tr>
                            <td>Designation:</td>
                            <td> <input type="text" name="z9"></input></td>
                        </tr>
                        <tr>
                            <td>DOB: </td>
                            <td><input type="date" name="z3"></input></td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td> <input type="text" name="z4" ng-model="email" required>
                                </input></td>
                        </tr>
                        <tr>
                            <td>Country:</td>
                            <td> <select name="z5" style="width: 147px;">
                                    <option value="null"></option>
                                    <option value="afganistan">Afganistan</option>
                                    <option value="bang">Bangladesh</option>
                                    <option value="chi">China</option>
                                    <option value="eng">England</option>
                                    <option value="india">India</option>
                                    <option value="pak">Pakistan</option>
                                    <option value="sri">SriLanka</option>
                                </select>
                        <tr>
                            <td>State: </td>
                            <td><input type="text" name="z6"></input></td>
                        </tr>
                        <tr>
                            <td>Mobile:</td>
                            <td> <input type="text" name="z7"></input></td>
                        </tr>

            </form>

            <tr>
                <!-- <td colspan="2" align="center"> <input type="submit" value="Submit Details"></input></td> -->
                <td align="center" colspan="2"><button class="RegButton"
                        style="margin-top: 1.5em; padding: 0.7em 2em 0 2em; ">Submit</button></td>
            </tr><br></br>
            </table>
            </fieldset>
        </div>
    </div>
</body>

</html>