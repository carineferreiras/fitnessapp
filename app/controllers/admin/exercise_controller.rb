class Admin::ExerciseController < AdminAuthenticatedController
    
    def index
        render json: Exercise.all, status: :ok
    end 
end