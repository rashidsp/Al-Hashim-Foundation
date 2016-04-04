angular
    .module('alHashimFound').factory('loginValidationFactory', function($http){
	var email_exists, password, error_message;

    var factory = {
        chechEmailValidity: chechEmailValidity,
        setErrorMessage: setErrorMessage,
        getErrorMessage: getErrorMessage,
    };
    return factory;

    function chechEmailValidity(email) {
    	if (email != 'undefined' && email.length > 0) {
    		isValidEmailAddress(email)
    		if (isValidEmailAddress(email)){
    			return true;
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

});
