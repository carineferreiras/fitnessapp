class CreateExercise < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name 
      t.integer :duration
      t.integer :repetitions
      t.integer :sets
      t.integer :user_id
      t.integer :weight

      t.timestamps
    end
  end
end
