class Category < ApplicationRecord
  belongs_to :user
  has_many :flash_cards
  has_many :cards, through: :flash_cards
end
