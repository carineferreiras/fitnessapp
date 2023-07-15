class CreateWorkoutVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_variants do |t|
      t.references :workout, foreign_key: true
      t.string :duration
      t.string :muscle_group_name

      t.timestamps
    end
  end
end
