class CreateAlbumSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :album_songs do |t|
      t.integer :album_id
      t.integer :song_id
      t.integer :track_number
      t.timestamps
    end
  end
end
