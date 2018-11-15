<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accessories.aspx.cs" Inherits="SPABootstrap.templates.accessories" %>

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
                <h2 class="main-title">Accessories <input type="search" class="form-control pull-right max-width300" placeholder="Search Smartphones" data-ng-model="search.smartphones" /></h2>
                <hr />
                <div class="product-list" data-infinite-scroll="DAS.nextPage()" data-infinite-scroll-distance='3' data-infinite-scroll-disabled='DAS.busy'>
                    <div class="row">
                        <div class="col-md-4" data-ng-repeat="product in DAS.products">
                            <div class="single-product mt20">
                                <div class="hovereffect">
                                    <img data-ng-src="{{product.image}}" alt="{{product.name}}" class="single-product-image" />
                                    <div class="overlay">
                                        <a class="info" data-ui-sref="productDetails({id: person.id})">View Item</a>
                                    </div>
                                </div>
                                <div class="single-product-body">
                                    <h4 class="text-center product-title">{{product.name}}</h4>
                                </div>
                                <div class="single-product-footer">
                                    <p>{{product.price | currency:"&#8377;"}}</p>
                                    <button type="button" class="btn btn-light-brown btn-sm pull-right" data-ng-disabled="product.in_stock == 0">Add to Cart</button>                                    
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <h4 class="text-center" data-ng-show='DAS.busy'>Loading data...</h4>
                </div>
            </div>
        </div>
    </div>

</div>