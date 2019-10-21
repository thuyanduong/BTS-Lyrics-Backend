class Album < ApplicationRecord
  has_many :tracks
  has_many :songs, through: :tracks
  belongs_to :album_type

  def self.all
    super.order(release_date: :asc)
  end
end
