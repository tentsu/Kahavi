angular.module 'Testi'
	.service 'WoWservice', ($resource) ->
		return $resource 'http://eu.battle.net/api/wow/character/:realm/:character',
			{realm: '@realm', character: '@character'}, {
				get: { method: "GET", isArray: false },
			}