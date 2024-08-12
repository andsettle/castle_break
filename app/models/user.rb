class User < ApplicationRecord
  has_many :towers
  has_many :player_sessions
  has_many :games, through: :player_sessions
  has_many :scores
end
