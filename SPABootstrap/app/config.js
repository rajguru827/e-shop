// configure our routes
angular.module('SinglePageApp').config(['$stateProvider', '$urlRouterProvider', '$locationProvider', 'growlProvider', function ($stateProvider, $urlRouterProvider, $locationProvider, growlProvider) {

    growlProvider.globalTimeToLive({ success: 5000, error: 5000, warning: 3000, info: 4000 });

    $locationProvider.html5Mode(true);

    // For any unmatched url, redirect to /state1
    $urlRouterProvider.otherwise("/home");
    $stateProvider
        // route for the index page
        .state('home', {
            url: '/home',
            templateUrl: 'templates/home.aspx',
            controller: 'productsController',
            controllerAs: 'productsCtrl',
            resolve: {
                productslist: function ($http) {
                    return $http.get("wServices/productsWService.asmx/GetAllProducts").then(function (response) {
                        return response.data;
                    })
                }
            }
        })

        // route for the smartphones page
        .state('smartphones', {
            url: '/smartphones',
            templateUrl: 'templates/smartphones.aspx',
            controller: 'smartphonesController',
            controllerAs: 'smartphonesCtrl',
            resolve: {
                productslist: function ($http) {
                    return $http.get("wServices/productsWService.asmx/GetAllProducts").then(function (response) {
                        return response.data;
                    })
                }
            }
        })

        // route for the smartphones page
        .state('accessories', {
            url: '/accessories',
            templateUrl: 'templates/accessories.aspx',
            controller: 'accessoriesController',
            controllerAs: 'accessoriesCtrl',
            resolve: { // Any property in resolve should return a promise and is executed before the view is loaded
                loadMyCtrl: ['$ocLazyLoad', function ($ocLazyLoad) {
                    // you can lazy load files for an existing module
                    return $ocLazyLoad.load([{                       
                        files: [
                            'app/accessories/accessoriesController.js',
                            'app/accessories/accessoriesFactory.js'
                        ]
                    }])
                }]
            }
            
    
        })

    

       // route for the smartphones page
        .state('laptops', {
            url: '/laptops',
            templateUrl: 'templates/laptops.aspx',
            controller: 'laptopsController',
            controllerAs: 'laptopsCtrl',
            resolve: {
                laptopslist: function ($http) {
                    return $http.get("wServices/productsWService.asmx/GetAllProducts").then(function (response) {
                        return response.data;
                    })
                },
                // Any property in resolve should return a promise and is executed before the view is loaded
                loadMyCtrl: ['$ocLazyLoad', function ($ocLazyLoad) {
                    // you can lazy load files for an existing module
                    return $ocLazyLoad.load([{
                        files: [
                            'app/laptops/laptopsController.js'
                        ]
                    }])
                }]
            }
        })

        .state("productDetails", {
            url: "/products/:id",
            templateUrl: "templates/productDetails.aspx",
            controller: "productDetailsController",
            controllerAs: "productDetailsCtrl"
        })

        .state("login", {
            url: "/user/login",
            templateUrl: "templates/login.aspx",
            controller: "loginFormController",
            controllerAs: "loginFormCtrl",
            resolve: { // Any property in resolve should return a promise and is executed before the view is loaded
                loadMyCtrl: ['$ocLazyLoad', function ($ocLazyLoad) {
                    // you can lazy load files for an existing module
                    return $ocLazyLoad.load('app/login/loginController.js');
                }]
            }
        })

        .state("register", {
            url: "/user/register",
            templateUrl: "templates/register.aspx",
            controller: "registerFormController",
            controllerAs: "registerFormCtrl",
            resolve: {
                // Any property in resolve should return a promise and is executed before the view is loaded
                loadMyCtrl: ['$ocLazyLoad', function ($ocLazyLoad) {
                    // you can lazy load files for an existing module
                    return $ocLazyLoad.load([{
                        files: [
                            'app/register/registerController.js'
                        ]
                    }])
                }]
            }
        })

        .state("addProduct", {
            url: "/admin/addproduct",
            templateUrl: "templates/addProduct.aspx",
            controller: "addProductController",
            controllerAs: "addProductCtrl"
        })

}]);

