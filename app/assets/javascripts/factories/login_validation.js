angular
    .module('alHashimFound').factory('loginValidationFactory', function($http){
	var email, password, error_message;

    var factory = {
        chechEmailValidity: chechEmailValidity,
        getErrorMessage: getErrorMessage
    };
    return factory;

    function chechEmailValidity(email) {
    	if (email.length > 0){
    		if (isValidEmailAddress(email)){
    			if (emailExists(email)){
    				return true;
    			}
    			else{
    				setErrorMessage("User of this email does not exists!");
    				return false;	
    			}	
    		}else{
    			setErrorMessage("invalid email!");
    			return false;	
    		}
    	}
    	else{
    		setErrorMessage("email cant be blank!");
    		return false
    	}

    };

    function setErrorMessage(error){
    	error_message = error;
    }

    function getErrorMessage(){
    	return error_message;
    }

    function isValidEmailAddress(emailAddress) {
    	var pattern;
    	pattern = new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
    	return pattern.test(emailAddress);
  	};

  	function emailExists(emailAddress){
  		var email_response = $http({
        method: 'GET',
        url: '/validation_email.json',
        params: {
          email: emailAddress
        }
      }).success(function(data) {
      	return data.success;
      }).error(function(data) {
        return false;
      });
      console.log (email_response);
      return email_response;
  	};

});
