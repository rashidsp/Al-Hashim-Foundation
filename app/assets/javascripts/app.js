var app = angular.module('alHashimFound', ['templates', 'ngRoute', 'controllers', 'Devise', 'ngProgress']);

app.config([
  "$httpProvider", function($httpProvider) {
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
  }
]);

app.config([
  '$routeProvider', function($routeProvider) {
    $routeProvider.when('/', {
      templateUrl: "index.html",
      controller: 'HomeCtrl'
    }).when('/videos', {
      templateUrl: "videos.html",
      controller: 'VideoCtrl'
    }).when('/campaigns', {
      templateUrl: 'campaigns.html',
      controller: 'CampaignCtrl'
    }).when('/volunteer', {
      templateUrl: 'volunteer.html',
      controller: 'VolunteerCtrl'
    }).when('/contacts', {
      templateUrl: 'contacts.html',
      controller: 'ContactCtrl'
    });
  }
]);
