class Track < ApplicationRecord
  belongs_to :album
  belongs_to :song

  def self.all
    super.order(track_number: :asc)
  end
end
