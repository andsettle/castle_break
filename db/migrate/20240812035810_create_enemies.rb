class CreateEnemies < ActiveRecord::Migration[7.2]
  def change
    create_table :enemies do |t|
      t.string :type
      t.integer :health
      t.integer :speed
      t.integer :position_x
      t.integer :position_y
      t.integer :target_position_x
      t.integer :target_position_y
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
