class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :name
      t.string :music_url
      t.string :description

      t.timestamps
    end
  end
end
