class Game < ApplicationRecord
  has_many :rounds
  has_many :player_sessions
  has_many :users, through: :player_sessions
  has_many :towers
  has_many :enemies

  belongs_to :map
end
