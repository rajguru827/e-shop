<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="smartphones.aspx.cs" Inherits="SPABootstrap.templates.smartphones" %>

<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="sidebar">
                <h2 class="main-title">Filter</h2>
                <hr />
                <h3 class="sub-title">Brand</h3>
                <div class="brand-filters">
                    <div class="form-group" data-ng-repeat="product in products | filter:{category: 'smartphone'} |  unique:'brand'">
                        <label class="checkbox-inline" for="{{product.brand}}">
                            <input type="checkbox" id="{{product.brand}}" value="{{product.brand}}" data-ng-model='search.type1' />
                            {{product.brand}}                        
                        </label>
                    </div>
                </div>

                <h3 class="sub-title">Price Range</h3>
                <div class="form-group">
                    
                </div>
            </div>
        </div>
        <div class="col-md-9">
            <div class="products-grid-md">
                <h2 class="main-title">Smartphones <input type="search" class="form-control pull-right max-width300" placeholder="Search Smartphones" data-ng-model="search.smartphones" /></h2>
                <hr />
                <div class="product-list" >
                    <div class="row">
                        <div class="col-md-4" dir-paginate="product in products | filter:{category: 'smartphone'} | filter:search.smartphones  | itemsPerPage: 6" pagination-id="smartphones">
                            <div class="single-product mt20">
                                <div class="hovereffect">
                                    <img data-ng-src="{{product.image}}" alt="{{product.name}}" class="single-product-image">
                                    <div class="overlay">
                                        <a class="info" data-ui-sref="productDetails({id: product.id})">View Product</a>
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
                </div>
            </div>
            <dir-pagination-controls max-size="5" direction-links="true" boundary-links="true" pagination-id="smartphones"></dir-pagination-controls>

        </div>
    </div>

</div>
