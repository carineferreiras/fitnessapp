class Admin::UserController < AdminAuthenticatedController

    #view all customers
    def index 
        user= User.all.size
        render json:  {"Total number of user": user }, status: :ok
    end 

    
    #view each customer
    def show 
        user = User.find_by(id: params[:id])

        render json: user, status: :ok
    end 

end
