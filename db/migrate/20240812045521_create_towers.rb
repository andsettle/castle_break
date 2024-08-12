class CreateTowers < ActiveRecord::Migration[7.2]
  def change
    create_table :towers do |t|
      t.string :type
      t.integer :level
      t.integer :position_x
      t.integer :position_y
      t.integer :damage
      t.integer :range
      t.references :game, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
