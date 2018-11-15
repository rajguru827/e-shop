(function () {
    'use strict';

    angular.module('accessoriesModule').factory('DAS', function ($http) {

        var DAS = function () {
            this.products = [];
            this.busy = false;
            this.after = 0;
            this.count = 5;
        };

        DAS.prototype.nextPage = function () {
            if (this.busy) return;
            this.busy = true;
            var url = 'wServices/productsWService.asmx/GetAllProducts?open' + '&count=' + this.count + '&start=' + this.after;
            console.log(url)
            $http.get(url).success(function (data) {
                var products = data;
                console.log(products)
                for (var i = 0; i < products.length; i++) {
                    this.products.push(products[i]);
                }
                this.after = this.after + this.count;
                console.log(this.after)
                this.busy = false;
            }.bind(this));
        };
        return DAS;
    });

    
})();


