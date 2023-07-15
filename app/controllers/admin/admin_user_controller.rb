class Admin::AdminUsersController < ApplicationController

    #signup 
def create
    more_admin_user = MorderAdminUser.create(admin_user)
    
    if more_admin_user.valid? 
        session[:more_admin_user_id] = more_admin_user.id

        render json: more_admin_user, status: :created
    else
        render json: {errors: more_admin_user.errors.full_messages }, status: :unprocessable_entity
    end

end

def admin_user 
    params.permit(:email_address, :password, :password_confirmation)
end 

end