angular.module('alHashimFound').controller("NavigationController", [
  '$scope', '$routeParams', '$location', function($scope, $routeParams, $location) {
    $scope.selectedMenu = "Home";
    $scope.selectMenu = function(title) {
      $scope.selectedMenu = title;
    };
    $scope.menuList = [
      {
        title: "Home",
        url: "#/",
        homeSubMenue: [
          {
            title: "history",
            url: "#"
          }, {
            title: "offers",
            url: "#"
          }, {
            title: "news",
            url: "#",
            newsSubMenue: {
              title: "fresh",
              url: "archive"
            }
          }
        ]
      }, {
        title: "Videos",
        url: "#videos"
      }, {
        title: "Campaigns",
        url: "#campaigns"
      }, {
        title: "Volunteer",
        url: "#volunteer"
      }, {
        title: "Contacts",
        url: "#contacts"
      }
    ];
  }
]);