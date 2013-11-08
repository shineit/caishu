class CreateEssays < ActiveRecord::Migration
  def change
    create_table :essays do |t|
      t.string :author
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
