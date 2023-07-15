class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :muscle_group_name
      t.references :user, foreign_key: true
      t.references :exercise, foreign_key: true
      t.boolean :is_default
      t.string :duration

      t.timestamps
    end
  end
end

