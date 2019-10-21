class UpdateColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :songs, :duplicate_song_id
    remove_column :songs, :is_duplicate
    remove_column :songs, :track_number
    remove_column :songs, :album_type_id
    remove_column :songs, :album_id
  end
end
