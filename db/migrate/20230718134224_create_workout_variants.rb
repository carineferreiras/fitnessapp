class CreateWorkoutVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_variants do |t|
      t.string :name 
      t.string :duration
      t.integer :repetitions
      t.integer :sets
      t.integer :weight
      t.string :muscle_group_name
      
      t.timestamps
    end
  end
end
