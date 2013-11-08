class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.string :title
      t.string :content
      t.integer :photo_mood_id
      t.integer :mood_category_id

      t.timestamps
    end
  end
end
