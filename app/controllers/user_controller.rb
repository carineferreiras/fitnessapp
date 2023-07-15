# class UserController < AuthenticatedController
#   skip_before_action :require_customer_authentication!, only: [:create]

#   #signup 
#   def create
    
#     user = User.create(user_params)

#     if user.valid?
#       session[:user_id]= user.id
#       render json: user, status: :created
#     else
#       render json {errors: user.errors.full_messages }, status: :unprocessable_entity
#     end

       

#   end

#   #stay logged in 
#   def show
#     user = User.find_by(id: session[:user_id])

#     if user
#       render json: user, status: :created
#     else
#       render json: { error: "Not authorized" }, status: :unauthorized
#     end
#   end

#   #update profile
#   def update 
#     user = User.find_by!(id: session[:user_id])
#     user.update!(user_params) 
    
#     render json: user, status: :accepted
# end 

 




# private

#   def user_params
#       params.permit(:firstname, :lastname, :phone_number, :email_address, :password, :password_confirmation)
#   end

# end

class UserController < AuthenticatedController
  skip_before_action :require_user_authentication!, only: [:create]

  # Signup
  def create
    user = User.create(user_params)

    if user.valid?
      session[:user_id] = user.id
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # Stay logged in
  def show
    user = User.find_by(id: session[:user_id])

    if user
      render json: user, status: :ok
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end

  # Update profile
  def update
    user = User.find_by(id: session[:user_id])
    if user.update(user_params)
      render json: user, status: :accepted
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:firstname, :lastname, :phone_number, :email_address, :password, :password_confirmation)
  end
end
