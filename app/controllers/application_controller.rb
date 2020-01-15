class ApplicationController < ActionController::API
    #testing purposes 
    def test
        render json: { test: "success" }
      end
end
