class CompleteSongSerializer < ActiveModel::Serializer
  attributes :id, :title, :slug, :album_id, :album_type_id, :track_number,
  :translator, :translator_url, :music_url, :youtube_url, :is_duplicate,
  :duplicate_song_id, :lyrics, :translation
  belongs_to :album
end
