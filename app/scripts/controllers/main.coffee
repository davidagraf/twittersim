angular.module('wedwitterApp')
  .controller('MainCtrl', ['$scope',
  ($scope) ->
    $scope.counter = 1
    snd = new Audio "http://dc396.4shared.com/img/696046871/3ddef97e/dlink__2Fdownload_2Fv6S-I4x-_3Ftsid_3D20130403-23330-2bb67940/preview.mp3"

    $("html").keypress () ->
      $scope.$apply () ->
        #snd.play()
        $scope.counter = $scope.counter + 1
  ])

# usage e.g.: ng-repeat="n in [] | range:someVariable"
angular.module('wedwitterApp').filter 'range', () ->
  (input, total) ->
    total = parseInt total
    if total > 0
      for i in [0..total-1]
        input.push(i)
    input.reverse()
