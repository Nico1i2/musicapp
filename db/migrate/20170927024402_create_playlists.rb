class CreatePlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists do |t|
      t.string :playlist_name
      t.timestamps
    end
    create_table :songs do |t|
      t.belongs_to :album, index: true
      t.timestamps
    end
    create_table :albums do |t|
      t.belongs_to :artist, index: true
      t.timestamps
    end

  end
end
