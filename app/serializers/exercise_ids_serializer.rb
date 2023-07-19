class ExerciseIdsSerializer < ActiveModel::Serializer

    attributes :id, :duration, :exercise, :muscle_group_name

    has_many :workout_variants


    def duration
        self.object.workout_variants.duration
    end


    def muscle_group_name
        self.object.workout_variants.workouts.muscle_group_name
    end
    

end