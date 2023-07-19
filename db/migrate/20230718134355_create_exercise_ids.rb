class CreateExerciseIds < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_ids do |t|
      t.references :exercise, null: false, foreign_key: true
      t.references :workouts, null: false, foreign_key: true
      t.string :name 

      t.timestamps
    end
  end
end
