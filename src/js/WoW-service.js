(function() {
  angular.module('Testi').service('WoWservice', function($resource) {
    return $resource('http://eu.battle.net/api/wow/character/:realm/:character', {
      realm: '@realm',
      character: '@character'
    }, {
      get: {
        method: "GET",
        isArray: false,
        headers: {
          'Access-Control-Allow-Origin': 'domain.ltd',
          'Access-Control-Allow-Headers': 'Origin, X-Requested-With, Content-Type, Accept',
          'Origin': 'domain.ltd',
          'Access-Control-Request-Headers': 'Origin, Accept, Content-Type',
          'Access-Control-Request-Method': 'POST'
        }
      }
    });
  });

}).call(this);
