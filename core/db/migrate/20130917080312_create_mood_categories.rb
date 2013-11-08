class CreateMoodCategories < ActiveRecord::Migration
  def change
    create_table :mood_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
