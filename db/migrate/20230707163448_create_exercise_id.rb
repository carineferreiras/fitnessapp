class CreateExerciseId < ActiveRecord::Migration[7.0]
    def change
      create_table :order_items do |t|
        t.integer :exercise_id
        t.decimal :duration
        t.integer :product_variant_id
        t.integer :quantity, default: 6
  
        t.timestamps
      end
    end
  end
