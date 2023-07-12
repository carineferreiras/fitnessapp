class CustomersController < AuthenticatedController
  
  before_action :require_user_authentication!, only: [:create]

  #signup 
  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    render json: user, status: :created

  end

  #stay logged in 
  def show
    user = User.find_by(id: session[:user_id])

    if user
      render json: user, status: :created
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end


  def index 
    render json: Workout.all, status: :ok
  end 


  def update 
    user = User.find_by!(id: session[:user_id])
    user.update(user_params) 
    render json: user, status: :accepted
  end 



private

  def user_params
      params.permit(:firstname, :lastname, :phone_number, :email_address, :password, :password_confirmation)
  end

end
