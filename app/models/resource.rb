class Resource < ApplicationRecord
  belongs_to :user
  belongs_to :game
end
