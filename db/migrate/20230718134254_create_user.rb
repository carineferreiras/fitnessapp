class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email_address
      t.string :phone_number
      t.string :password_digest

      t.timestamps
    end
  end
end
