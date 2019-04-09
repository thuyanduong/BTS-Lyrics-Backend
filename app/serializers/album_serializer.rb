#can't figure out how to use this in album controller
class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :album_type_id, :title, :slug, :release_date,
  :image_url, :music_url
  has_many :songs

  def songs
    object.songs.order(:track_number)
  end
end
