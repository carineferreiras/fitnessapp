# class Admin::UserController < AdminAuthenticatedController

#     #view all customers
#     def index 
#         user= User.all.size
#         render json:  {"Total number of user": user }, status: :ok
#     end 

    
#     #view each customer
#     def show 
#         user = User.find_by(id: params[:id])

#         render json: user, status: :ok
#     end 

# end

class Admin::UserController < AdminAuthenticatedController
    # View all customers
    def index
      user_count = User.count
      render json: { "Total number of users": user_count }, status: :ok
    end
  
    # View each customer
    def show
      user = User.find_by(id: params[:id])
  
      if user
        render json: user, status: :ok
      else
        render json: { error: "User not found" }, status: :not_found
      end
    end
  end
  