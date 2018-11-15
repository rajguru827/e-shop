(function () {
    'use strict';

    angular.module('registerModule', [])
    .controller('registerFormController', function ($scope, $http,growl) {
        //email format validation pattern
        $scope.emailFormat = /^[a-z]+[a-z0-9._]+@[a-z]+\.[a-z.]{2,5}$/;

        //setting error and success classes for form-group
        $scope.isInputValid = function (input) {
            return input.$dirty && input.$valid;
        }
        $scope.isInputInvalid = function (input) {
            return input.$dirty && input.$invalid;
        }

        $scope.formModel = {};
        $scope.submitRegisterForm = function (form) {            
            if (form.$valid) {
                //console.log($scope.formModel);
                //sending form data to database through webservice
                $http.post("wServices/usersWService.asmx/AddUser", '{user: ' + JSON.stringify($scope.formModel) + '}').success(function (data) {                    
                    $scope.formModel = {};
                    growl.success('You are successfully registered! Please login.', { title: 'Success!', disableCountDown: true });
                    form.$setPristine();
                    form.$setUntouched();
                }).error(function(data){
                    growl.error('Error while submitting your data! Please try again.', { title: 'Error!', disableCountDown: true });
                });
            }
            else {
                angular.forEach($scope.registerForm.$error.required, function (field) {
                    field.$setDirty();
                });
            }
        };

    });

    //password and confirm password vaidation
    angular.module('registerModule').directive('validPasswordC', function () {
        return {
            require: 'ngModel',
            scope: {
                reference: '=validPasswordC'
            },
            link: function (scope, elm, attrs, ctrl) {
                ctrl.$parsers.unshift(function (viewValue, $scope) {
                    var noMatch = viewValue != scope.reference
                    ctrl.$setValidity('noMatch', !noMatch);
                    return (noMatch) ? noMatch : !noMatch;
                });
                scope.$watch("reference", function (value) {;
                    ctrl.$setValidity('noMatch', value === ctrl.$viewValue);

                });
            }
        }
    });

})();
