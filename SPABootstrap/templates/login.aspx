<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SPABootstrap.templates.login" %>

<div class="container">

    <div class="card-form card" data-ng-form="loginForm">
        <h1 class="main-title">Login</h1>
        <div class="form-group" data-ng-class="{'has-error': isInputInvalid(loginForm.txtemail), 'has-success': isInputValid(loginForm.txtemail)}">
            <label for="txtemail">Email*</label>
            <input type="email" class="form-control" name="txtemail" data-ng-model="txtemail" data-ng-pattern="emailFormat" id="txtemail" required="required" placeholder="Email" />
            <p data-ng-show="loginForm.txtemail.$error.required && !loginForm.txtemail.$pristine" class="help-block">Email is required.</p>
            <p data-ng-show="loginForm.txtemail.$error.pattern && !loginForm.txtemail.$pristine" class="help-block">Invalid email address.</p>
        </div>
        <div class="form-group" data-ng-class="{'has-error': isInputInvalid(loginForm.txtpassword), 'has-success': isInputValid(loginForm.txtpassword)}">
            <label for="txtpassword">Password*</label>
            <input type="password" class="form-control" name="txtpassword" id="txtpassword" data-ng-model="txtpassword" data-ng-minlength="8" required="required" placeholder="Password" />
            <p data-ng-show="loginForm.txtpassword.$error.required && !loginForm.txtpassword.$pristine" class="help-block">Password is required.</p>
            <p data-ng-show="loginForm.txtpassword.$error.minlength && !loginForm.txtpassword.$pristine" class="help-block">Password should be minimum of 8 characters long.</p>
        </div>
        <div class="form-group">
            <label class="checkbox-inline" for="chkrememberme">
                <input type="checkbox" id="chkrememberme" />Remember Me.</label>
            <a href="#" class="pull-right">Forgot Password?</a>
        </div>
        <div class="form-group">
            <button type="button" class="btn btn-light-brown btn-block" data-ng-click="submitForm(loginForm)">Login</button>
        </div>
        <a ui-sref="register" class="text-center block">Create Account?</a>
    </div>

</div>
