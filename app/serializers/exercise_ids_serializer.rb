class ExerciseIdsSerializer < ActiveModel::Serializer

    attributes :id
    # attributes :id, :duration, :user, :muscle_group_name,  :repetitions, :sets , :weight

    has_many :workout_variants


    def duration
        self.object.workout_variants.duration
    end


    def muscle_group_name
        self.object.workout_variants.workouts.muscle_group_name
    end
    

end