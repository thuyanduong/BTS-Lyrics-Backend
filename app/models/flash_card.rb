class FlashCard < ApplicationRecord
  belongs_to :category
  belongs_to :card
end
