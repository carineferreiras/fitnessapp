class CreateWorkoutVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_variants do |t|
      t.integer :workout_id
      t.string :duration
      t.decimal :muscle_group_name

      t.timestamps
    end
  end
end

