<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addProduct.aspx.cs" Inherits="SPABootstrap.templates.addProduct" %>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card mt20">
                <h1 class="main-title">Add Product</h1>
                <hr />
                <div class="addProduct-Form" data-ng-form="addProductForm">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="txtproductName">Product Name*</label>
                                <input type="text" class="form-control" name="txtproductName" id="txtproductName" data-ng-model="formModel.txtproductName"  data-parsley-group="addProductGrp"  required="required"/>
                            </div>
                            <div class="form-group">
                                <label for="selproductcategory">Product Category*</label>
                                <div class="input-group">
                                    <select class="form-control" name="selproductcategory" id="selproductcategory" data-ng-model="formModel.selproductcategory" data-parsley-group="addProductGrp" required="required">
                                        <option value="">Select Category</option>
                                        <option value="smartphone">Smartphone</option>
                                        <option value="laptop">Laptop</option>
                                        <option value="accessory">Accessory</option>
                                        <option value="tablets">Tablets</option>
                                    </select>
                                    <span class="input-group-btn">
                                        <button class="btn btn-primary" type="button"  data-toggle="modal" data-target="#addCategoryModal">Add New Category</button>
                                    </span>
                                </div>                                
                            </div>
                            <div class="form-group">
                                <label for="txtproductDescription">Product Description*</label>
                                <textarea class="form-control" rows="4" name="txtproductDescription" id="txtproductDescription" data-ng-model="formModel.txtproductDescription" data-parsley-length="[20, 500]" data-parsley-group="addProductGrp" required="required"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="txtproductSummary">Product Summary*</label>
                                <textarea class="form-control" rows="4" name="txtproductSummary" id="txtproductSummary" data-ng-model="formModel.txtproductSummary" data-parsley-length="[20, 500]" data-parsley-group="addProductGrp" required="required"></textarea>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="txtproductImage">Product Image URL*</label>
                                <input type="url" class="form-control" name="txtproductImage" id="txtproductImage" data-ng-model="formModel.txtproductImage" data-parsley-group="addProductGrp" required="required"/>
                            </div>
                            <div class="form-group">
                                <label for="txtproductWeight">Product Weight*</label>
                                <input type="text" class="form-control" name="txtproductName" id="txtproductWeight" data-ng-model="formModel.txtproductWeight" data-parsley-pattern="^\d+(\.\d+)*$" data-parsley-group="addProductGrp"  required="required"/>
                            </div>
                            <div class="form-group">
                                <label for="selproductInStock">Product In Stock*</label>
                                <select class="form-control" name="selproductInStock" id="selproductInStock" data-ng-model="formModel.selproductInStock" data-parsley-group="addProductGrp"  required="required">
                                    <option value="">Select Option</option>
                                    <option value="1">Yes</option>
                                    <option value="2">No</option>
                                </select>                                
                            </div>
                            <div class="form-group">
                                <label for="selproductBrand">Product Brand*</label>
                                <select class="form-control" name="selproductBrand" id="selproductBrand" data-ng-model="formModel.selproductBrand" data-parsley-group="addProductGrp" required="required">
                                    <option value="">Select Brand</option>
                                    <option value="Apple">Apple</option>
                                    <option value="OnePlus">OnePlus</option>
                                    <option value="Xiaomi">Xiaomi</option>
                                    <option value="Dell">Dell</option>
                                    <option value="HP">HP</option>
                                    <option value="Samsung">Samsung</option>
                                    <option value="htc">htc</option>
                                    <option value="Micromax">Micromax</option>
                                    <option value="Motorola">Motorola</option>
                                </select>
                            </div>                            
                            <div class="form-group">
                                <label for="txtproductPrice">Product Price*</label>
                                <input type="text" class="form-control" name="txtproductPrice" id="txtproductPrice" data-ng-model="formModel.txtproductPrice" data-parsley-pattern="^\d+(\.\d+)*$" data-parsley-group="addProductGrp" required="required"/>
                            </div>

                            <input type="button" class="btn btn-success" id="btnAddProduct" data-ng-click="addProduct(addProductForm)" value="Add Product" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="addCategoryModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Add New Product Category</h4>
            </div>
            <div class="modal-body">
                <div class="new-category-form" data-ng-form="newCategoryForm">
                    <div class="form-group">
                        <label for="txtcategoryName">Category Name</label>
                        <input type="text" class="form-control" name="txtcategoryName" id="txtcategoryName" data-ng-model="formModelCat.txtcategoryName" required="required" data-parsley-group="newCategoryGrp" />
                    </div>
                </div>                             
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" data-ng-click="addProductCategory(newCategoryForm)" >Save</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
