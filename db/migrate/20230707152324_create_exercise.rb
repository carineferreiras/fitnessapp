class CreateExerciseId < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_id do |t|
      t.integer :exercise_id
      t.integer :workout_variant_id

      t.timestamps
    end
  end
end
