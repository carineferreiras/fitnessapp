class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :muscle_group_name
      t.integer :user_id
      t.integer :exercise_id
      t.integer :workout_id
      t.boolean :is_default
      t.string :duration
      

      t.timestamps
    end
  end
end


