<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="navbar.ascx.cs" Inherits="SPABootstrap.partials.navbar" %>


<nav class="navbar navbar-default main-nav" data-ng-controller="navbarController">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"  data-ng-click="navbarCollapsed = !navbarCollapsed">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="home"><span>E</span> - Shop</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse"  uib-collapse="navbarCollapsed">
            
            <ul class="nav navbar-nav navbar-right">
                <li data-ui-sref-active="active"><a data-ui-sref="home">Home</a></li>
                <li  data-ui-sref-active="active"><a data-ui-sref="smartphones">Smartphones</a></li>
                <li><a href="#">Tablets</a></li>
                <li data-ui-sref-active="active"><a data-ui-sref="laptops">Laptops</a></li>
                <li  data-ui-sref-active="active"><a data-ui-sref="accessories">Accessories</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
