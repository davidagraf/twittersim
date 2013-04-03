angular.module('wedwitterApp', [])
  .config ['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'
    null
  ]
