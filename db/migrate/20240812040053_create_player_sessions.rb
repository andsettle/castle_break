class CreatePlayerSessions < ActiveRecord::Migration[7.2]
  def change
    create_table :player_sessions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.datetime :last_active_at

      t.timestamps
    end
  end
end
