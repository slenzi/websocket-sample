'use strict';

/* Controllers */

/*
 * Create controller module for myApp
 */
var controllerModule = angular.module('myApp.controllers', [ 'ngMaterial' ]);

controllerModule.controller('AppCtrl', function($scope, $timeout, $mdSidenav) {
	$scope.toggleLeft = function() {
		$mdSidenav('left').toggle();
	};
	$scope.toggleRight = function() {
		$mdSidenav('right').toggle();
	};
});

controllerModule.controller('LeftCtrl', function($scope, $timeout, $mdSidenav) {
	$scope.close = function() {
		$mdSidenav('left').close();
	};
});

controllerModule.controller('RightCtrl',function($scope, $timeout, $mdSidenav) {
	$scope.close = function() {
		$mdSidenav('right').close();
	};
});
