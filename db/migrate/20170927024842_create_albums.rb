class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :album_name
      t.string :release
      t.string :recorded
      t.string :studio
      t.string :genre
      t.string :label
      t.string :producer
      t.timestamps
    end
  end
end
