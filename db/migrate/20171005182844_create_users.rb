class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phonenumber
      t.string :birthday
      t.string :gender
      t.string :address

      t.timestamps
    end
  end
end
