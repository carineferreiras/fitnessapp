# # class ExercisesController < ApplicationController
# #     def index
# #         exercises = Exercise.all
# #         render json: exercises
# #     end

# #     def create
# #         exercise = Exercise.create(exercise_params)
# #         render json: exercise
# #     end

# #     def update
# #     end
# #     def destroy
# #     end

# #     private
# #     def exercise_params
# #         params.require(:exercise).permit(:name, :repetitions, :sets, :workout_id)
# #     end
# # end

# class ExercisesController < AuthenticatedController

#     def create 
#         exercise = Exercise.create!(user_id: session[:user_id], **exercise_params)

#         render json: exercise, status: :created
#     end 

#     def index 
#        exercise = Exercise.find_by!(user_id: session[:user_id])
#         render json: exercise, status: :ok
#     end 

#    #private methods
#    private 

#    def exercise_params 
#        params.permit(exercise_items_attributes: [:workout_id])
#    end 

# end


class ExercisesController < AuthenticatedController
    def create
      exercise = Exercise.create!(user_id: session[:user_id], **exercise_params)
      render json: exercise, status: :created
    end
  
    def index
      exercises = Exercise.where(user_id: session[:user_id])
      render json: exercises, status: :ok
    end

    # def index
    #     exercises = Workout.find(params [workout_id: session[:user_id]).exercise
    #     render json: exercises, status: :ok
    #   end
  
    private
  
    def exercise_params
      params.require(:exercise).permit(:name, :repetitions, :sets, :workout_id)
    end
  end
  