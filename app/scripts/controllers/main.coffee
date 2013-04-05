angular.module('wedwitterApp')
  .controller('MainCtrl', ['$scope', '$http',
  ($scope, $http) ->
    $scope.counter = 0
    snd = new Audio "data/preview.mp3"

    $http.get('data/tweets.json').success (data) ->
      $scope.tweets = data

    $("html").keydown (ev) ->
      $scope.$apply ->
        if ev.keyCode == 37 or ev.keyCode == 38
          if $scope.counter > 0
            $scope.counter = $scope.counter - 1
        else
          if $scope.tweets.length > $scope.counter
            snd.play()
            $scope.counter = $scope.counter + 1
  ])

# usage e.g.: ng-repeat="n in [] | range:someVariable"
angular.module('wedwitterApp').filter 'range', ->
  (input, total) ->
    total = parseInt total
    if total > 0
      for i in [0..total-1]
        input.push(i)
    input.reverse()
