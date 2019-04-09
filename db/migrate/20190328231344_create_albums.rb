class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.integer :album_type_id
      t.string :title
      t.string :slug
      t.date :release_date
      t.string :image_url
      t.string :music_url
      t.timestamps
    end
  end
end
