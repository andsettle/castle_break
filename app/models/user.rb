class User < ApplicationRecord
  has_many :towers
  has_many :player_sessions
  has_many :games, through: :player_sessions
  has_many :scores
  has_many :resourcs

  # Authentication 
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end
