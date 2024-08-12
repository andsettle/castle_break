class CreateRounds < ActiveRecord::Migration[7.2]
  def change
    create_table :rounds do |t|
      t.integer :number
      t.integer :enemy_count
      t.datetime :spawn_time
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
