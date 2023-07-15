class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :repetitions
      t.integer :sets
      t.references :workout, foreign_key: true

      t.timestamps
    end
  end
end
