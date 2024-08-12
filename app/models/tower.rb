class Tower < ApplicationRecord
  belongs_to :user
  belongs_to :game

  def attack_enemy(enemy)
    # do something later
  end
end
