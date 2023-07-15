# class WorkoutController < ApplicationController

#     def index 
#         render json: Workout.all, status: :ok
#     end 

#     def show 
#         workout = Workout.find(params[:id])

#         render json: workout, status: :ok

#     end 
# else
#     render json: { error: "Not Found" }
    
# end
# def destroy
#     workout = Workout.find(params[:id])
#     workout.delete 
#     head :no_content
# end 
# end

class WorkoutController < ApplicationController
    def index
      workouts = Workout.all
      render json: workouts, status: :ok
    end
  
    def show
      workout = Workout.find_by(id: params[:id])
  
      if workout
        render json: workout, status: :ok
      else
        render json: { error: "Not Found" }, status: :not_found
      end
    end
  
    def destroy
      workout = Workout.find_by(id: params[:id])
  
      if workout
        workout.destroy
        head :no_content
      else
        render json: { error: "Not Found" }, status: :not_found
      end
    end
  end
  