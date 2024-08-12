class CreateAiStates < ActiveRecord::Migration[7.2]
  def change
    create_table :ai_states do |t|
      t.references :enemy, null: false, foreign_key: true
      t.string :state
      t.integer :target_id
      t.string :current_action
      t.datetime :last_action_time

      t.timestamps
    end
  end
end
