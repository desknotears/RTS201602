/**
 * 
 */

var dashApp = angular.module('dashApp', ['ngRoute', 'dashControllers', 'angucomplete-alt', '720kb.datepicker']);

dashApp.config(['$routeProvider',
  function($routeProvider){
	$routeProvider.
	  when('/search',{
		  templateUrl: 'search.html',
		  controller: 'dashSearchCtrl'
	  }).
	  when('/profile',{
		 templateUrl: 'profile.html',
		 controller: 'dashProfileCtrl'
	  }).
	  when('/orders',{
		 templateUrl: 'order.html',
		 controller: 'dashOrderCtrl'
	  }).
	  when('/cart-page', {
		  templateUrl: 'cart-page.html',
		  controller: 'dashCartPage'
	  }).
	  when('/creditcard', {
		  templateUrl: 'creditcard.html',
		  controller: 'creditcardController'
	  }).
	  when('/checkout', {
		 templateUrl: 'dashCheckout.html',
		 controller: 'dashCheckoutCtrl'
	  }).
	  when('/checkout/success', {
		  templateUrl: 'checkout/success.html'
	  }).
	  otherwise({
		  redirectTo: '/search'
	  });
}]);

dashApp.controller('dashIndexCtrl', ['$scope', '$http', function($scope, $http){
	$scope.unpaidOrders = [];
	$scope.refresh = function(){$http.post("/MyRTS/resource/cart/get/all", {}).success(function(data){
		$scope.unpaidOrders = data;
		console.log($scope.unpaidOrders);
	});};
	$scope.refresh();
	$scope.$on('refresh cart', $scope.refresh);
	$scope.showCart = false;
}]);