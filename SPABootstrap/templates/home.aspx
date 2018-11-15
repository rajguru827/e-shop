<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="SPABootstrap.templates.home" %>




<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="main-slider mt20">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="http://consumer.huawei.com/en/ucmc/groups/public/documents/webasset/img_con_en_we_banner1.jpg" alt="..." class="slider-image">                           
                        </div>
                        <div class="item">
                            <img src="http://telecomtalk.info/wp-content/uploads/2015/12/Motorola-Moto-G-Turbo-Edition-03.jpg" alt="..." class="slider-image">                           
                        </div>
                        <div class="item">
                            <img src="http://1.bp.blogspot.com/-9MBxXW3BjMk/VRJYiSjnXjI/AAAAAAAAAWQ/IDtiZmqJnBg/s1600/moto%2Bg3.jpg" alt="..." class="slider-image">                           
                        </div>                        
                    </div>                    
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="products-grid">
                <h2 class="main-title text-center">Latest Arrivals</h2>

                <div class="product-list">
                    <div class="row">                       
                        <div class="col-md-4" data-ng-repeat="product in productsCtrl.products | limitTo :6">
                            <div class="single-product mt20">
                                <div class="hovereffect">
                                    <img  data-ng-src="{{product.image}}" alt="{{product.name}}" class="single-product-image" />
                                    <div class="overlay">
                                        <a class="info" data-ui-sref="productDetails({id: product.id})">View Item</a>
                                    </div>
                                </div>
                                <div class="single-product-body">
                                    <h4 class="text-center product-title">{{product.name}}</h4>
                                </div>
                                <div class="single-product-footer">
                                    <p>{{product.price | currency:"&#8377;"}}</p>
                                    <button type="button" class="btn btn-light-brown btn-sm pull-right" data-ng-disabled="product.in_stock == 0" data-ng-click="count(1)">Add to Cart</button>
                                    <div class="clearfix"></div>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        
    </div>
</div>
