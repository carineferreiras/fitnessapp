class Admin::UserController < AdminAuthenticatedController

    #view all customers
    def index 
        render json: User.all, status: :ok
    end 

    
    #view each customer
    def show 
        user = User.find_by(id: params[:id])

        render json: user, status: :ok
    end 

end
