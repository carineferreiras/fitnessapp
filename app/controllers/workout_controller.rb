class WorkoutController < ApplicationController

    def index 
        render json: Workout.all, status: :ok
    end 

    def show 
        workout = Workout.find(params[:id])

        render json: workout, status: :ok

    end 
else
    render json: { error: "Not Found" }
    
end
end