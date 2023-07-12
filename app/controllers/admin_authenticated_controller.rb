class AdminAuthenticatedController < ApplicationController
    before_action :require_user_authentication!

    private

    def require_user_authentication!
        render json: { error: "Not authorized"}, status: :unauthorized unless session[:admin_id]
    end 
    
end
