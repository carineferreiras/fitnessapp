class ExerciseIdSerializer < ActiveModel::Serializer

    attributes :id, :duration, :exercise_id, :muscle_group_name

    has_many :workout_variant


    def duration
        self.object.workout_variant.duration
    end


    def muscle_group_name
        self.object.workout_variant.workout.muscle_group_name
    end
    

end