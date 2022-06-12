<%-- 
    Document   : signup
    Created on : 12-Jun-2022, 10:01:10 am
    Author     : rikin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registeration Form</title>

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    <style>
        body {
            background: url(images/download.jpg);
            background-size: cover;
            background-attachment: fixed;
        }

        .card {
            background-color: transparent;
        }

        .validate {
            color: white;

        }

        h3, h5 {
            color: white;
        }

    </style>

</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col m6 offset-m3">

                <div class="card">

                    <div class="card-content">

                        <h3 class="center-align">Register Here</h3>
                        <h5 id="msg" class="center-align"></h5>
                        <br>
                        <div class="form center-align">

                            <form action="Register" method="post" id="myForm">

                                <div class="input-field">

                                    <input name="user_name" id="inp1" type="text" class="validate" autocomplete="off">
                                    <label for="inp1" style="color: white;">Name:</label>

                                </div>

                                <div class="input-field">

                                    <input name="user_email" id="inp2" type="email" class="validate" autocomplete="off">
                                    <label for="inp2" style="color: white;">Email:</label>

                                </div>

                                <div class="input-field">

                                    <input name="user_pass" id="inp3" type="password" class="validate"
                                        autocomplete="off">
                                    <label for="inp3" style="color: white;">Password:</label>

                                </div>

                                <button class="btn" type="submit">Submit</button>

                            </form>

                        </div>

                        <br>

                        <div class="loader center-align" style="display: none;">

                            <div class="preloader-wrapper small active">
                                <div class="spinner-layer spinner-blue">
                                    <div class="circle-clipper left">
                                        <div class="circle"></div>
                                    </div>
                                    <div class="gap-patch">
                                        <div class="circle"></div>
                                    </div>
                                    <div class="circle-clipper right">
                                        <div class="circle"></div>
                                    </div>
                                </div>

                                <div class="spinner-layer spinner-red">
                                    <div class="circle-clipper left">
                                        <div class="circle"></div>
                                    </div>
                                    <div class="gap-patch">
                                        <div class="circle"></div>
                                    </div>
                                    <div class="circle-clipper right">
                                        <div class="circle"></div>
                                    </div>
                                </div>

                                <div class="spinner-layer spinner-yellow">
                                    <div class="circle-clipper left">
                                        <div class="circle"></div>
                                    </div>
                                    <div class="gap-patch">
                                        <div class="circle"></div>
                                    </div>
                                    <div class="circle-clipper right">
                                        <div class="circle"></div>
                                    </div>
                                </div>

                                <div class="spinner-layer spinner-green">
                                    <div class="circle-clipper left">
                                        <div class="circle"></div>
                                    </div>
                                    <div class="gap-patch">
                                        <div class="circle"></div>
                                    </div>
                                    <div class="circle-clipper right">
                                        <div class="circle"></div>
                                    </div>
                                </div>
                            </div>

                            <h5>Please wait</h5>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>

</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script>
    $(document).ready(function () {
        console.log("page is ready");

        $("#myForm").on('submit', function (event) {
            event.preventDefault();

            var f = $(this).serialize();

            console.log(f);

            $(".loader").show();
            $(".form").hide();

            $.ajax({
                url: "Register",
                data: f,
                type: 'POST',
                success: function (data, textStatus, jqXHR) {
                    console.log(data);
                    console.log("Success");

                    $(".loader").hide();
                    $(".form").show();

                    if(data.trim() === 'Done')
                    {
                        $('#msg').html("Successfully Registered");
                        $('#msg').addClass('green-text');
                    }
                    else
                    {
                        $('#msg').html("Something went wrong, try again");
                        $('#msg').addClass('red-text');
                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log(data);
                    console.log("Error");
                
                    $(".loader").hide();
                    $(".form").show();

                    $('#msg').html("Something went wrong, try again");
                    $('#msg').addClass('red-text');
                }
            });

        })
    });
</script>

</html>