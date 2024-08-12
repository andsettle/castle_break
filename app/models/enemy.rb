class Enemy < ApplicationRecord
  belongs_to :round
  belongs_to :game

  def move
    # move about
  end
end
