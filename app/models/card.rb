class Card < ApplicationRecord
  has_many :flash_cards
  has_many :categories, through: :flash_cards
end
