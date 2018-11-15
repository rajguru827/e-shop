<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SPABootstrap.index" %>

<%@ Register Src="~/partials/navbar.ascx" TagPrefix="uc1" TagName="navbar" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" data-ng-app="SinglePageApp">
<head>
    <title>E Shop</title>
    <base href="/" />
    <!-- Bootstrap Css Library -->
    <link href="assets/lib/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/lib/angular-1.5.8/angular-growl.css" rel="stylesheet" />
    <!-- custom css -->
    <link href="assets/css/main.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" data-parsley-validate='parsley'>
        <header data-ng-controller="headerController">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="pull-left header-top-left">
                            <ul>
                                <li data-ng-class="{active: isActive('/user/login')}"><a data-ui-sref="login"><span class="glyphicon glyphicon-user"></span>&nbsp;Login</a></li>
                                <li data-ng-class="{active: isActive('/user/register')}"><a data-ui-sref="register"><span class="glyphicon glyphicon-lock"></span>&nbsp;Create an Account</a></li>
                            </ul>
                        </div>
                        <span class="text-center timer visible-lg visible-md">{{theTime}}</span>
                        <div class="pull-right header-top-right">
                            <ul>
                                <li data-ui-sref-active="active"><a data-ui-sref="addProduct"><span class="glyphicon glyphicon-heart"></span>&nbsp;Add Product</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;My Cart (0)</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <uc1:navbar runat="server" ID="navbar" />

        <div growl></div>
        <div class="main-content">
            <!-- content is injected here -->
            <ui-view></ui-view>
        </div>


        <footer>
            <div class="container">
            </div>
        </footer>
        <!-- jquery Js lib -->
        <script src="assets/js/jquery-1.12.4.min.js"></script>
        <!-- Bootstrap Js Lib -->
        <script src="assets/lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <!--angularjs and the seperate route module -->
        <script src="assets/lib/angular-1.5.8/angular.min.js"></script>
        <script src="assets/lib/angular-1.5.8/angular-ui-router.min.js"></script>
        <script src="assets/lib/angular-1.5.8/dirPagination.js"></script>
        <script src="assets/lib/angular-1.5.8/ng-infinite-scroll.min.js"></script>
        <script src="assets/lib/angular-1.5.8/angular-growl.min.js"></script>
        <script src="assets/lib/angular-1.5.8/ocLazyLoad.min.js"></script>
        <script src="assets/js/ui-bootstrap-tpls-2.1.3.min.js"></script>
        <script src="assets/lib/angular-1.5.8/angular-animate.min.js"></script>
        <script src="assets/js/parsley.min.js"></script>
        <!-- load up our app -->
        <script src="app/app.js"></script>
        <script src="app/config.js"></script>
        <script src="assets/js/custom.js"></script>
    </form>
</body>
</html>
