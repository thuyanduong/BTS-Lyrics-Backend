class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :slug
      t.integer :album_id
      t.integer :album_type_id
      t.integer :track_number
      t.string :translator
      t.string :translator_url
      t.string :music_url
      t.string :youtube_url
      t.string :lyrics
      t.string :translation
      t.boolean :is_duplicate
      t.integer :duplicate_song_id
      t.timestamps
    end
  end
end
