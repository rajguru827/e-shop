
var app = angular.module('SinglePageApp', [
    'ui.router',
    'angularUtils.directives.dirPagination',
    'infinite-scroll',
    'angular-growl',
    'oc.lazyLoad',
    'ui.bootstrap',
    'ngAnimate'
]);


//list of products controller
app.controller('productsController', function (productslist) {
    var vm = this;    
    vm.products = productslist;
    console.log(vm.products);


    
});

app.controller('smartphonesController', function (productslist, $scope) {
    function chunk(arr, size) {
        var newArr = [];
        for (var i = 0; i < arr.length; i += size) {
            newArr.push(arr.slice(i, i + size));
        }
        return newArr;
    }

    $scope.chunkedData = chunk(productslist, 3);
    $scope.products = productslist;
    console.log($scope.products);

});



//filter for getting unique data
app.filter('unique', function () {
    return function (collection, keyname) {
        var output = [],
            keys = [];

        angular.forEach(collection, function (item) {
            var key = item[keyname];
            if (keys.indexOf(key) === -1) {
                keys.push(key);
                output.push(item);
            }
        });

        return output;
    };
});

app.controller('headerController', function ($scope, $interval,  $location) {
    $scope.theTime = new Date().toLocaleTimeString();
    $interval(function () {
        $scope.theTime = new Date().toLocaleTimeString();
    }, 1000);

    $scope.isActive = function (viewLocation) {
        return viewLocation === $location.path();
    };
})


app.controller("productDetailsController", function ($http, $stateParams) {
    var vm = this;
    $http({
        url: "wServices/productsWService.asmx/GetProduct",
        method: "get",
        params: { id: $stateParams.id }
    }).then(function (response) {
        vm.product = response.data;
    })
})

app.controller("addProductController", function ($scope, $http, growl) {
    $scope.formModel = {};
    $scope.addProduct = function () {
        $('#form1').parsley().validate({ group: 'addProductGrp' });
        if ($('#form1').parsley().isValid({ group: 'addProductGrp' })) {
            $http.post("wServices/productsWService.asmx/AddProduct", '{product: ' + JSON.stringify($scope.formModel) + '}').success(function (data) {
                growl.success('Product successfully added.', { title: 'Success!', disableCountDown: true });
                $scope.formModel = {};
                $('#form1').parsley().reset({ group: 'addProductGrp' })
            }).error(function (data) {
                growl.error('Error while submitting your data! Please try again.', { title: 'Error!', disableCountDown: true });
            });
            console.log('valid')
        }
        else {
            console.log('invalid')
        }
    }

    $scope.addProductCategory = function () {
        $scope.formModelCat = {};
        $('#form1').parsley().validate({ group: 'newCategoryGrp' });
        if ($('#form1').parsley().isValid({ group: 'newCategoryGrp' })) {
            growl.success('Category successfully added.', { title: 'Success!', disableCountDown: true });
            $('#addCategoryModal').modal('toggle');
            $scope.formModelCat = {};
            $('#form1').parsley().reset({ group: 'newCategoryGrp' })
        }
        else {
            console.log('invalid')
        }
    }
})

app.controller("navbarController", function ($scope) {
    $scope.navbarCollapsed = true;
    $scope.$on('$stateChangeSuccess', function (event, next) {
        $scope.navbarCollapsed = true;
    });
});