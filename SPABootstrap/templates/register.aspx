<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="SPABootstrap.templates.register" %>

<div class="container">

    <div class="card-form card" data-ng-form="registerForm">
        <h1 class="main-title">Register</h1>
        <div class="form-group" data-ng-class="{'has-error': isInputInvalid(registerForm.txtfullname), 'has-success': isInputValid(registerForm.txtfullname)}">
            <label for="txtfirstname">Full Name*</label>
            <input type="text" class="form-control" name="txtfullname" data-ng-model="formModel.txtfullname" data-ng-minlength="3" id="txtfullname" required="required" placeholder="Full Name" />
            <p data-ng-show="registerForm.txtfullname.$error.required && !registerForm.txtfullname.$pristine" class="help-block">Full Name is required.</p>
            <p data-ng-show="registerForm.txtfullname.$error.minlength && !registerForm.txtfullname.$pristine" class="help-block">Full Name should be minimum of 3 characters long.</p>
        </div>
        <%--<div class="form-group">
            <label for="birthday">Date Of Birth*</label>          
            <div class="form-inline inline-dateofbirth">
                <div class="form-group" data-ng-class="{'has-error': isInputInvalid(registerForm.selYear), 'has-success': isInputValid(registerForm.selYear)}">
                    <select class="form-control" name="selYear" data-ng-model="formModel.selYear" required="required">
                        <option value="">YYYY</option>
                        <option value="1990">1990</option>
                    </select>
                </div>
                <div class="form-group" data-ng-class="{'has-error': isInputInvalid(registerForm.selMonth), 'has-success': isInputValid(registerForm.selMonth)}">
                    <select class="form-control" name="selMonth" data-ng-model="formModel.selMonth" required="required">
                        <option value="">Month</option>
                        <option value="jan">Jan</option>
                    </select>
                </div>
                <div class="form-group" data-ng-class="{'has-error': isInputInvalid(registerForm.selDay), 'has-success': isInputValid(registerForm.selDay)}">
                    <select class="form-control" name="selDay" data-ng-model="formModel.selDay" required="required">
                        <option value="">Day</option>
                        <option value="01">01</option>
                    </select>
                </div>
            </div>
        </div>--%>
        <div class="form-group" data-ng-class="{'has-error': isInputInvalid(registerForm.seldateofbirth), 'has-success': isInputValid(registerForm.seldateofbirth)}">
            <label for="birthday">Date Of Birth*</label>
            <input type="date" class="form-control" name="seldateofbirth" data-ng-model="formModel.seldateofbirth" required="required" />
            <p data-ng-show="registerForm.seldateofbirth.$error.required && !registerForm.seldateofbirth.$pristine" class="help-block">Date of birth is required.</p>
        </div>
        <div class="form-group" data-ng-class="{'has-error': isInputInvalid(registerForm.txtemail), 'has-success': isInputValid(registerForm.txtemail)}">
            <label for="txtemail">Email*</label>
            <input type="email" class="form-control" name="txtemail" data-ng-model="formModel.txtemail" data-ng-pattern="emailFormat" id="txtemail" required="required" placeholder="Email" />
            <p data-ng-show="registerForm.txtemail.$error.required && !registerForm.txtemail.$pristine" class="help-block">Email is required.</p>
            <p data-ng-show="registerForm.txtemail.$error.pattern && !registerForm.txtemail.$pristine" class="help-block">Invalid email address.</p>
        </div>
        <div class="form-group" data-ng-class="{'has-error': isInputInvalid(registerForm.txtpassword), 'has-success': isInputValid(registerForm.txtpassword)}">
            <label for="txtpassword">Password*</label>
            <input type="password" class="form-control" name="txtpassword" id="txtpassword" data-ng-model="formModel.txtpassword" data-ng-minlength="8" required="required" placeholder="Password" />
            <p data-ng-show="registerForm.txtpassword.$error.required && !registerForm.txtpassword.$pristine" class="help-block">Password is required.</p>
            <p data-ng-show="registerForm.txtpassword.$error.minlength && !registerForm.txtpassword.$pristine" class="help-block">Password should be minimum of 8 characters long.</p>
        </div>
        <div class="form-group" data-ng-class="{'has-error': isInputInvalid(registerForm.txtconfirmpassword), 'has-success': isInputValid(registerForm.txtconfirmpassword)}">
            <label for="txtconfirmpassword">Confirm Password*</label>
            <input type="password" class="form-control" name="txtconfirmpassword" id="txtconfirmpassword" data-ng-model="formModel.txtconfirmpassword" valid-password-c="formModel.txtpassword" data-ng-minlength="8" required="required" placeholder="Password" />
            <p data-ng-show="registerForm.txtconfirmpassword.$error.required && !registerForm.txtconfirmpassword.$pristine" class="help-block">Password is required.</p>
            <p data-ng-show="registerForm.txtconfirmpassword.$error.minlength && !registerForm.txtconfirmpassword.$pristine" class="help-block">Password should be minimum of 8 characters long.</p>
            <p data-ng-show="registerForm.txtconfirmpassword.$error.noMatch && !registerForm.txtconfirmpassword.$pristine" class="help-block">Passwords do not match.</p>
        </div>

        <div class="form-group">
            <button type="button" class="btn btn-light-brown btn-block" data-ng-click="submitRegisterForm(registerForm)">Register</button>
        </div>
        <a ui-sref="login" class="text-center block">Already registered login here!</a>
    </div>

</div>
