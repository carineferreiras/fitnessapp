class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :muscle_group_name
      t.string :duration
      t.string : title
      t.integer: workout_id
      t.integer: user_id
      t.integer: workout_id

      t.timestamps
    end
  end
end

