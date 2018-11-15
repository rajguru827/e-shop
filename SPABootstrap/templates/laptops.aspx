<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laptops.aspx.cs" Inherits="SPABootstrap.templates.laptops" %>

<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="sidebar">
                <h2 class="main-title">Filter</h2>
                <hr />
                <legend>Brand</legend>
                <p></p>
            </div>
        </div>
        <div class="col-md-9">
            <div class="products-grid-md">
                <h2 class="main-title">Laptops
                    <input type="search" class="form-control pull-right max-width300" placeholder="Search Smartphones" /></h2>
                <hr />
                <div class="product-list">
                    <div class="row">
                        <div class="col-md-4" data-ng-repeat="product in products |  filter:{category: 'laptop'} | limitTo:totalDisplayed">
                            <div class="single-product mt20">
                                <div class="hovereffect">
                                    <img data-ng-src="{{product.image}}" alt="{{product.name}}" class="single-product-image"/>
                                    <div class="overlay">
                                        <a class="info" data-ui-sref="productDetails({id: product.id})">View Item</a>
                                    </div>
                                </div>
                                <div class="single-product-body">
                                    <h4 class="text-center product-title">{{product.name}}</h4>
                                </div>
                                <div class="single-product-footer">
                                    <p>{{product.price | currency:"&#8377;"}}</p>
                                    <button type="button" class="btn btn-light-brown btn-sm pull-right" data-ng-disabled="product.isAvilable == false">Add to Cart</button>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <center>
                        <button type="button" id="myButton" data-loading-text="Loading..." data-ng-click="loadMore()"  class="btn btn-primary" >
                          Load More
                        </button>
                    </center>
                </div>
            </div>
        </div>
    </div>

</div>
