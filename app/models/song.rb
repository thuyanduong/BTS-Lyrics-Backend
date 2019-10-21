class Song < ApplicationRecord
  has_many :tracks
  has_many :albums, through: :tracks

  def self.all
    super.order(title: :asc)
  end
end
