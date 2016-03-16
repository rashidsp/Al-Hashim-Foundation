controllers = angular.module('controllers',[])

controllers.controller("NavigationController", [ '$scope', '$routeParams', '$location',
  ($scope,$routeParams,$location)->
  	$scope.selectedMenu = "Home"
  	$scope.selectMenu = (title) ->
  		$scope.selectedMenu = title

  	$scope.menuList = [{
  		title: "Home",
  		url: "#/",
  		homeSubMenue: [{
  			title: "history",
  			url: "#"
  		},{
  			title: "offers",
  			url: "#"
  		},{
  			title: "news",
  			url: "#",
  			newsSubMenue: {
  				title: "fresh",
  				url: "archive"
  			}
  		}]
  	},{
  		title: "Videos",
  		url: "#videos"
  	},{
  		title: "Campaigns",
  		url: "#campaigns"
  	},{
  		title: "Volunteer",
  		url: "#volunteer"
  	},{
  		title: "Contacts",
  		url: "#contacts"
  	}]
]) 


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

controllers.controller("LoginCtr", [ '$scope', '$routeParams', '$location',
  ($scope,$routeParams,$location)->
])