class AuthenticatedController < ApplicationController
    before_action :require_user_authentication!

    private 
    def require_user_authentication!
        render json: { error: "Not authorized"}, status: :unauthorized unless session[:user_id]
    end 
end