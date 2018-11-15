(function () {
    'use strict';

    angular.module('loginModule', [])
    .controller('loginFormController', function ($scope) {
        $scope.emailFormat = /^[a-z]+[a-z0-9._]+@[a-z]+\.[a-z.]{2,5}$/;
        $scope.isInputValid = function (input) {
            return input.$dirty && input.$valid;
        }

        $scope.isInputInvalid = function (input) {
            return input.$dirty && input.$invalid;
        }

        $scope.submitForm = function (form) {
            angular.forEach($scope.loginForm.$error.required, function (field) {
                field.$setDirty();
            });
            if (form.$valid) {
                alert('valid');
            }
            else {

            }
        };

    });

})();
