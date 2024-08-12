class CreateGames < ActiveRecord::Migration[7.2]
  def change
    create_table :games do |t|
      t.string :state
      t.integer :current_wave
      t.references :map, null: false, foreign_key: true

      t.timestamps
    end
  end
end
