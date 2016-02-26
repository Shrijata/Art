class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.datetime :release_date
      t.integer :album_id
      t.text :lyrics

      t.timestamps null: false
    end
  end
end
