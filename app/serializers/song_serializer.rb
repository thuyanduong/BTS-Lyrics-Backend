#can't figure out how to use this in song controller
class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :slug, :album_id, :album_type_id,
  :track_number, :is_duplicate, :duplicate_song_id
end
