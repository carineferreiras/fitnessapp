class CreateWorkout < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :muscle_group_name
      t.string :duration
      # t.integer :user_id
      # t.integer :exercise_id
      t.integer :workout_id
      t.references :user, foreign_key: true
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
