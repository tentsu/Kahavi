(function() {
  'use strict';
  angular.module('Testi').controller('TestController', function($scope, WoWservice) {
    console.log('asd');
    console.log('asd32 2');
    $scope.getCharacter = function(realm, character) {
      WoWservice.get({
        realm: realm,
        character: character
      }, function(data) {
        console.log(data);
      }, function(error) {
        console.log(error);
      });
    };
  });

}).call(this);
