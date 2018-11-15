(function () {
    'use strict';

    angular.module('laptopsModule', []).controller('laptopsController', function ($scope, $http, laptopslist) {

        $scope.count = $scope.products_length;
        var data = [];
        while ($scope.count) {
            data[$scope.count] = $scope.count--;
        }
        $scope.totalDisplayed = 6;

        $scope.loadMore = function () {
            $scope.totalDisplayed += 6;
        };
        $scope.products = laptopslist;
    });

})();
