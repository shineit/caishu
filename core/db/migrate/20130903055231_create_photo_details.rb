class CreatePhotoDetails < ActiveRecord::Migration
  def change
    create_table :photo_details do |t|
      t.integer :click_times,:default => 0
      t.integer :download_times,:default => 0
      t.integer :photo_id
      t.timestamps
    end
  end
end
