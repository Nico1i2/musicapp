+class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.integer :song_length
      t.string :songwriter
      t.timestamps
    end
  end
end
