/*
    Esp.js - Esp state
 */
'use strict';

app.factory('Esp', function($rootScope) {
	var esp = {}
    $rootScope.esp = esp;
    return esp;
});


/*
    Startup initialization. Fetch the application settings file config.json.
 */
app.run(function($rootScope, $http, Esp) {
    $http.get('config.json').success(function(data) {
        Esp.config = data;
    }).error(function() {
        console.log("Cannot fetch config.json");
    });
});