# class Admin::WorkoutController < AdminAuthenticatedController

#     #create a workout
#     def create 
#         render json: Workout.create!(workout_params), status: :created
#     end 


#     #view all workouts
#     def index 
#         render json: Workout.all, status: :ok
#     end 

#     #view a certail workout
#     def show 
#         workout = get_workout_by_id

#         render json: workout, status: :ok 
#     end 

#     #update a workout
#     def update 
#        workout = get_workout_by_id
#         workout.update!(workout_params)

#         render json: workout, status: :accepted
#     end 


#     #destroy a workout
#     def destroy 
#         workout = get_workout_by_id
#        workout.delete 
#         head :no_content
#     end 



#     #private methods
#     private 

#     def get_workout_by_id
#       Workout.find_by!(id: params[:id])
#     end 

#     def workout_params 
#         # params.permit(:id, :title, :description, workout_variants_attributes: [:id, :size, :price])
#         params.permit(:id, :title, :description, workout_variants_attributes: [:id])
#     end
    
# end

class Admin::WorkoutController < AdminAuthenticatedController
    # Create a workout
    def create
      workout = Workout.create!(workout_params)
      render json: workout, status: :created
    end
  
    # View all workouts
    def index
      workout = Workout.all
      render json: workout, status: :ok
    end
  
    # View a certain workout
    def show
      workout = get_workout_by_id
      render json: workout, status: :ok
    end
  
    # Update a workout
    def update
      workout = get_workout_by_id
      workout.update!(workout_params)
      render json: workout, status: :accepted
    end
  
    # Destroy a workout
    def destroy
      workout = get_workout_by_id
      workout.destroy
      head :no_content
    end
  
    private
  
    def get_workout_by_id
      Workout.find_by(id: params[:id])
    end
  
    def workout_params
      params.permit(:id, :title, :description, workout_variants_attributes: [:id])
    end
  end
  