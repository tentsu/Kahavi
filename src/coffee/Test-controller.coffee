'use strict'

angular.module 'Testi'
	.controller 'TestController', ($scope, WoWservice) ->
		console.log 'asd'
		console.log 'asd32 2'
		
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