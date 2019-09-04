<%@page contentType="text/html" pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <title>Criar categoria</title>

    <!-- Icons font CSS-->
    <link href="vendorregistro/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendorregistro/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- vendorregistro CSS-->
    <link href="vendorregistro/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendorregistro/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/mainregistro.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-blue p-t-100 p-b-100 font-robo">
        <div class="wrapper wrapper--w680">
            <div class="card card-1">
                <div class="card-body">
                    <h2 class="title">Criar categoria</h2>
                    <form method="post" action="${pageContext.request.contextPath}/categoria" role="form">
                        <div class="input-group">
                            <input class="input--style-1" type="text" placeholder="NOME DA CATEGORIA" name="nomecategoria" value=""/>
                        </div>
                        <div class="p-t-20">
                            <button class="btn btn--radius btn--green" type="submit" name="ok">Criar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendorregistro/jquery/jquery.min.js"></script>
    <!-- vendorregistro JS-->
    <script src="vendorregistro/select2/select2.min.js"></script>
    <script src="vendorregistro/datepicker/moment.min.js"></script>
    <script src="vendorregistro/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->
