class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :encrypted_password
      t.integer :towers_placed
      t.integer :score

      t.timestamps
    end
  end
end
