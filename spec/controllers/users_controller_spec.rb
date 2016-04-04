require 'spec_helper'

describe UsersController do

  describe "GET 'validation_email'" do
    it "returns http success" do
      get 'validation_email'
      response.should be_success
    end
  end

end
