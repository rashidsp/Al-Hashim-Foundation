controllers = angular.module('controllers',[])

controllers.controller("HomeCtrl", [ '$scope', '$routeParams', '$location',
  ($scope,$routeParams,$location)->
  	$scope.our_mission = "Comming Soon."
  	$scope.lates_projects = "Comming Soon."
  	$scope.publications = "Comming Soon."
  	$scope.participate = "Comming Soon."
])

controllers.controller("VideoCtrl", [ '$scope', '$routeParams', '$location',
  ($scope,$routeParams,$location)->

])

controllers.controller("CampaignCtrl", [ '$scope', '$routeParams', '$location',
  ($scope,$routeParams,$location)->

])

controllers.controller("VolunteerCtrl", [ '$scope', '$routeParams', '$location',
  ($scope,$routeParams,$location)->

])


controllers.controller("ContactCtrl", [ '$scope', '$routeParams', '$location',
  ($scope,$routeParams,$location)->

])