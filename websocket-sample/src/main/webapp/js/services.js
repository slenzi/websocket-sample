'use strict';

/* Services */

/*
 * Create services module with dependency on ngResource for consuming RESTful services.
 */
var sampleServices = angular.module('myApp.services', ['ngResource']).
	value('version', '0.1');