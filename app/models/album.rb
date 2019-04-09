class Album < ApplicationRecord
  has_many :songs
  belongs_to :album_type
end
