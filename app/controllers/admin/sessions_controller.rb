# class Admin::SessionsController < AdminAuthenticatedController
#     skip_before_action :require_customer_authentication!, only: [:create]


#     #login 
#     def create 
#         admin_user = AdminUser.find_by(username: params[:username])

#         if admin_user&.authenticate(params[:password])
#             session[:admin_id] = admin_user.id
#             render json: admin_user
#         else  
#             render json: { error: "Invalid username or password" }, status: :unauthorized
#         end 
#     end 


#     #logout 
#     def destroy 
#         session.delete :admin_id
#         head :no_content
#     end 
    
# end


class Admin::SessionsController < AdminAuthenticatedController
    skip_before_action :require_user_authentication!, only: [:create]
  
    # Login
    def create
      admin_user = AdminUser.find_by(username: params[:username])
  
      if admin_user&.authenticate(params[:password])
        session[:admin_id] = admin_user.id
        render json: admin_user, status: :ok
      else
        render json: { error: "Invalid username or password" }, status: :unauthorized
      end
    end
  
    # Logout
    def destroy
      session.delete(:admin_id)
      head :no_content
    end
  end
  