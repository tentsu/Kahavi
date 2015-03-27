'use strict'

angular.module 'Testi'
	.controller 'TestController', ($scope, WoWservice) ->
		
		$scope.getCharacter = (realm, character) ->
			WoWservice.get {realm: realm, character: character},
				(data) ->
					console.log data
					return

				(error) ->
					console.log error
					return
			return
		return