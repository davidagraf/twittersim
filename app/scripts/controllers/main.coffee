angular.module('wedwitterApp')
  .controller('MainCtrl', ['$scope',
  ($scope) ->
    $scope.counter = 1

    $("html").keypress () ->
      $scope.$apply () ->
        $scope.counter = $scope.counter + 1
  ])

# usage e.g.: ng-repeat="n in [] | range:someVariable"
angular.module('wedwitterApp').filter 'range', () ->
  (input, total) ->
    total = parseInt total
    if total > 0
      for i in [0..total-1]
        input.push(i)
    input
