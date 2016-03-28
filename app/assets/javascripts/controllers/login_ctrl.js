angular
    .module('alHashimFound')
    .controller('LoginCtr', LoginCtr);

function LoginCtr(loginValidationFactory) {
    var vm = this;
    vm.name = {};
    vm.validateEmail = function(e) {
      email_obj = e.target;
      emailIsValid = loginValidationFactory.chechEmailValidity(email_obj.value);
      // if loginValidationFactory.emailIsValid("rashidsp"){
      //   $("#email_error").html("");
      // }else{
      //   error = loginValidationFactory.showErroMessages;
      //   $("#email_error").html(error);
      // }
      if (emailIsValid){
        $("#email_error").html(email_obj.value);
      }
      else{
        $("#email_error").html(loginValidationFactory.getErrorMessage());
      }
    };
}






// angular.module('alHashimFound').controller('LoginCtr', function(Auth, ngProgressFactory, $scope, $http) {
//   $scope.progressbar = ngProgressFactory.createInstance();
//   $scope.progressbar.stop();
//   $scope.email_error = "";

//   $scope.showErroMessages = function(error){
//     $("#email_error").html("dsfsdfsdfsdfsdfsdfsdfsdfs");
//   }

//   $('#user_email').focusout(function() {
//     if (isValidEmailAddress(this.value)) {
//       $http({
//         method: 'GET',
//         url: '/validation_email.json',
//         params: {
//           email: this.value
//         }
//       }).success(function(data) {
//         if (data.success) {
//           $scope.email_error = data.message;
//         } else {
//           $scope.email_error = "";
//         }
//       }).error(function(data) {
//         console.log('failed');
//       });
//     } else {
//       console.log("sorry");
//     }
//   });
//   function isValidEmailAddress(emailAddress) {
//     var pattern;
//     pattern = new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
//     return pattern.test(emailAddress);
//   };
//   $('#user_email').focus(function() {
//     $scope.email_error = "";
//     $("#email_error").html("");
//   });
// });
