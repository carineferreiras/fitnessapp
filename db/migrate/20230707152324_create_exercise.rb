class CreateExerciseId < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_ids do |t|
      t.references :exercise, null: false, foreign_key: true
      t.references :workout_variant, null: false, foreign_key: true
      t.decimal :duration
      t.integer :quantity, default: 6

      t.timestamps
    end
  end
end
