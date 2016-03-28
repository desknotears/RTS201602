/**
 * 
 */

var dashControllers = angular.module('dashControllers', []);

dashControllers.controller('dashSearchCtrl', ['$scope', '$http', function($scope, $http){
	$scope.stations = [];
	$scope.scheduleList = [];
	$scope.canShowTable = false;
	$http.get("/MyRTS/resource/station/get/all").success(function(data){
		angular.forEach(data, function(station){
			station.display = station.name + ', ' + station.city + ', ' + station.state;
		});
		$scope.stations = data;
		console.log($scope.stations);
	});
	
	$scope.show = function(){
		var param = $.param({departureStation: $scope.departureStation.originalObject.stationNo,
							 arrivalStation: $scope.arrivalStation.originalObject.stationNo,
							 departureDate: new Date($scope.departureDate).getTime()
							});
		console.log(param);
		$http({
			url: "/MyRTS/resource/schedule/get/by-stations-date",
			method: "POST",
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			data: param
		}).
		success(function(data){
			$scope.scheduleList = data;
			angular.forEach($scope.scheduleList, function(schedule){
				var ticket_param = $.param({
					departureStation: $scope.departureStation.originalObject.stationNo,
					arrivalStation: $scope.arrivalStation.originalObject.stationNo,
					trainNo: schedule.train.trainNo
				});
				
				$http({
					url: "/MyRTS/resource/ticket/get/price/by-stations-train/",
					method: "POST",
					headers: {'Content-Type': 'application/x-www-form-urlencoded'},
					data: ticket_param
				}).success(function(data){
					console.log(data);
					schedule.price = data;
					$scope.canShowTable = true;
				});
				
				var departure_param = $.param({
					trainNo: schedule.train.trainNo,
					stationNo: $scope.departureStation.originalObject.stationNo,
				});
				$http({
					url: "/MyRTS/resource/get/time-by-station-train",
					method: "POST",
					headers: {'Content-Type': 'application/x-www-form-urlencoded'},
					data: departure_param
				}).success(function(data){
					var x = new Date(data);
					var dateStr = (x.getHours() < 10) ?'0' + x.getHours() : x.getHours();
					dateStr += ":";
					dateStr += (x.getMinutes() < 10) ?'0' + x.getMinutes() : x.getMinutes();
					console.log(dateStr);
					schedule.departureTime = dateStr;
				});
				
				var arrival_param = $.param({
					trainNo: schedule.train.trainNo,
					stationNo: $scope.arrivalStation.originalObject.stationNo,
				});
				$http({
					url: "/MyRTS/resource/get/time-by-station-train",
					method: "POST",
					headers: {'Content-Type': 'application/x-www-form-urlencoded'},
					data: arrival_param
				}).success(function(data){
					var x = new Date(data);
					var dateStr = (x.getHours() < 10) ?'0' + x.getHours() : x.getHours();
					dateStr += ":";
					dateStr += (x.getMinutes() < 10) ?'0' + x.getMinutes() : x.getMinutes();
					console.log(dateStr);
					schedule.arrivalTime = dateStr;
				});
			});
		});
	};
	
	$scope.addToCart = function(schedule){
		var order = {
				departureStation: $scope.departureStation.originalObject.stationNo,
				arrivalStation: $scope.arrivalStation.originalObject.stationNo,
				trainNo: schedule.train.trainNo,
				departureDateTime: new Date($scope.departureDate).getTime(),
				qty: schedule.bookingQty
		}
		var oParam = $.param(order);
		console.log(oParam);
		$http({
			method: 'POST',
			url: "/MyRTS/resource/cart/add/ticket",
			data:oParam,
			headers: {'Content-Type': 'application/x-www-form-urlencoded'}
		}).success(function(data){
			/*$http.post("/MyRTS/resource/cart/get/all", {}).success(function(data){
				$scope.unpaidOrders = data;
				console.log("refresh cart:");
				console.log($scope.unpaidOrders);
			});*/
			$scope.$emit('refresh cart');
		});
	}
}]);

dashControllers.controller('dashProfileCtrl', ['$scope','$http', function($scope, $http){
	console.log("profile ctrl");
	$http.get('profileData').success(function(data){
		$scope.profile = data;
	});
}]);

dashControllers.controller('dashOrderCtrl',['$scope', '$http', function($scope, $http){
	$scope.orders = [];
	$http.get('orderData').success(function(data){
		$scope.orders = data;
		console.log($scope.orders);
		$scope.orders.sort(function(a,b){
			return a.orderNo - b.orderNo;
		})
		angular.forEach($scope.orders, function(order){
			var date = new Date(order.orderDate);
			var formatDate = (date.getMonth()+1) + "/" +date.getDate() + "/" + date.getUTCFullYear();
			console.log(formatDate);
			order.orderDate = formatDate;
			var creditCardNoLen = order.creditCardNo.length;
			order.creditCardNo = order.creditCardNo.slice(-4);
			for(; creditCardNoLen - 4 > 0; creditCardNoLen--){
				order.creditCardNo = "*" + order.creditCardNo;
			}
		});
	});
}]);

dashControllers.controller('dashCartPage', ['$scope', '$http', '$location', function($scope, $http, $location){
	console.log("cart ctrl is created");
	$scope.uos = [];
	$scope.total = 0;
	
	$scope.go = function(path){
		console.log("redirect: " + path);
		$location.path(path);
	};
	
	$scope.clearCart = function(){
		console.log("clear");
		$http.get('/MyRTS/resource/clear/cart').success(function(data){
			$scope.$emit('refresh cart');
			/*$http.post("/MyRTS/resource/cart/get/all", {}).success(function(data){
				$scope.unpaidOrders = data;
				console.log("refresh cart:");
				console.log($scope.unpaidOrders);
			});*/
		});
		$scope.uos = [];
		$scope.total = $scope.calculateTotal($scope.uos);
	};
	
	$scope.calculateTotal = function(tickets){
		var tt = 0;
		angular.forEach(tickets, function(t){
			tt += t.price * t.qty;
		});
		return tt;
	};
	
	$scope.refreshList = function(list){
		var ab = []
		angular.forEach(list, function(uo){
			var uu = {trainNo: uo.key.departureTransit.train.trainNo,
					  departureStation: uo.key.departureTransit.station.name,
					  arrivalStation: uo.key.arrivalTransit.station.name,
					  price: uo.key.price,
					  qty: uo.value
			}
			ab.push(uu);
		});
		return ab;
	}
	
	$scope.uos = $scope.refreshList($scope.unpaidOrders);
	$scope.total = $scope.calculateTotal($scope.uos);
	console.log("uos: "); console.log($scope.uos);
}]);

dashControllers.controller("creditcardController", function($scope, $http) {
	// Initialization
	$scope.creditcardData = [];
	$http({
		method : "GET",
		url : "/MyRTS/member/creditcarddata",
	}).success(function(data) {
		//alert(data);
		$scope.creditcardData = data;
	}).error(function(data) {
		alert("AJAX Error!");
	});

	$scope.removeCard = function(selected, index) {
		//alert(selected.cardId);		
		var params = $.param({
			cardId : selected.cardId
		});
		$http(
				{
					method : "POST",
					url : "/MyRTS/member/removecreditcard/",
					data : params,
					headers : {
						'Content-Type' : 'application/x-www-form-urlencoded'
					}
				}).success(function(status) {
			console.log(status);
			$scope.creditcardData.splice(index, 1);
			$scope.selected = null;
		}).error(function() {
			alert('ERROR');
		});
	};

	$scope.saveCard = function(selected) {
		//alert(selected.cardNo);
		var params = $.param({
			paymentBrand : selected.paymentBrand,
			cardId : selected.cardId,
			cardNo : selected.cardNo,
			firstName : selected.firstName,
			lastName : selected.lastName,
			expiration : selected.expiration,
			billingAddr : selected.billingAddr,
			city : selected.city,
			state : selected.state,
			zipCode : selected.zipCode
		});
		//alert(station.stationNo);
		$http(
				{
					method : "POST",
					url : "/MyRTS/member/editcreditcard/",
					data : params,
					headers : {
						'Content-Type' : 'application/x-www-form-urlencoded'
					}
				}).success(function(status) {
			console.log(status);
		}).error(function() {
			alert('ERROR');
		});
	};

	$scope.editCard = function(selected,$index) {
		//alert(selected.cardNo);
		$scope.editing = $scope.creditcardData.indexOf($index);
	};

	$scope.saveField = function(selected,$index) {
		if ($scope.editing !== false) {
			$scope.editing = false;
		}
	};

});

dashControllers.controller("dashCheckoutCtrl",['$scope', '$http', '$location', function($scope, $http, $location){	
	$scope.cc={};
	
	console.log("dashCheckoutCtrl is created");
	
	$scope.checkout = function(){
		console.log("checkout!");
		var params = $.param($scope.cc); 
	    //delete $http.defaults.headers.common['X-Requested-With'];
  		$http({
  			method: "POST",
  			url: "/MyRTS/resource/order/submit/",
  			data: params,
  			headers: {'Content-Type': 'application/x-www-form-urlencoded'}
  		}).success(function (data) {
  			 console.log(data);
  			 $scope.$emit('refresh cart');
  			 $location.path('/orders');
    	});
	};
		
	$scope.checkCard = function(cardNo) {
		if (cardNo > 9999999999999999) return false;
		if (cardNo < 1000000000000000) return false;
		var i = 0;
		var sum = 0;
		for (i=0;i<16;i++){
			var temp = cardNo % 10;
			cardNo = (cardNo-temp) / 10;
			if (i%2 == 1) {
				temp = temp * 2;
			}
			if (temp > 9) {
				temp = temp - 9;
			}
			sum = sum + temp;
		}					
		if (sum % 10 == 0) {

			return true;
		}
		return false;
	};
}]);