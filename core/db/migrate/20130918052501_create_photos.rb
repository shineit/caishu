class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :alias_name
      t.integer :photo_category_id
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
