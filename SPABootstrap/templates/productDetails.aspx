<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productDetails.aspx.cs" Inherits="SPABootstrap.templates.productDetails" %>

<div class="container">
    <div class="row">
        <div class="product-view">
            <div class="col-md-4">
                <div class="product-images">
                    <div class="big-image">
                        <img data-ng-src="{{productDetailsCtrl.product.image}}" class="img-responsive mt20" />
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <h1 class="main-title">{{productDetailsCtrl.product.name}}</h1>
                <h3>Price : {{productDetailsCtrl.product.price | currency:"&#8377;"}}</h3>
                <h4>Weight : {{productDetailsCtrl.product.weight}} gms </h4>
                <img src="http://www.instock.co.uk/instock-logo.png" data-ng-show="productDetailsCtrl.product.in_stock == 1" width="200px" />
                <p class="text-justify">{{productDetailsCtrl.product.desc}}</p>
                <div class="buttons" data-ng-show="productDetailsCtrl.product.in_stock == 1">
                    <button type="button" class="btn btn-success">Buy Now</button> | 
                    <button type="button" class="btn btn-warning" data-ng-click="addtoCart()">Add to Cart</button>
                </div>
                
            </div>
        </div>
    </div>
</div>

