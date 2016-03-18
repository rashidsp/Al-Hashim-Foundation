angular.module('alHashimFound').controller 'LoginCtr', (Auth, $scope) ->
  
  $scope.validateEmail = () ->
    console.log("fsdfsdfsdfsdfsd");

  credentials = 
    email: 'user@domain.com'
    password: 'password1'
  config = headers: 'X-HTTP-Method-Override': 'POST'
  Auth.login(credentials, config).then ((user) ->
    console.log "success"
    # => {id: 1, ect: '...'}
    return
  ), (error) ->
    console.log error.data.error
    # Authentication failed...
    return
  $scope.$on 'devise:login', (event, currentUser) ->
    # after a login, a hard refresh, a new tab
    return
  $scope.$on 'devise:new-session', (event, currentUser) ->
    # user logged in by Auth.login({...})
    return
  return