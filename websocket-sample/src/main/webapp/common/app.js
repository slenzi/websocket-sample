'use strict';

/*
 * Declare app level module which depends on filters, and services
 */
var myApp = angular.module('myApp', [
	'ngRoute',
	'ngMaterial',
	'myApp.filters',
	'myApp.services',
	'myApp.directives',
	'myApp.controllers'
])
