class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :password
      t.string :user_name
      t.string :gender
      t.string :birth_date
      t.timestamps
    end
  end
end
