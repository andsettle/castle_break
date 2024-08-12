class CreateResources < ActiveRecord::Migration[7.2]
  def change
    create_table :resources do |t|
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.integer :gold

      t.timestamps
    end
  end
end
