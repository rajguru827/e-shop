(function () {
    'use strict';
   angular.module('accessoriesModule', []).controller('accessoriesController', function($scope, DAS) {
       $scope.DAS = new DAS();
   });

  
})();
