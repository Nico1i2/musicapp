class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :description
      t.string :origin
      t.string :website
      t.timestamps
    end
  end
end
