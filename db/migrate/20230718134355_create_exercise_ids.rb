class CreateExerciseIds < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_ids do |t|
      t.references :exercises, null: false, foreign_key: true
      t.references :workout_variants, null: false, foreign_key: true
      t.decimal :duration
      t.integer :quantity

      t.timestamps
    end
  end
end
