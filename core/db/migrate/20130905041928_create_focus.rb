class CreateFocus < ActiveRecord::Migration
  def change
    create_table :focus do |t|
      t.string :name
      t.integer :category
      t.string :alias_name
      t.string :url
      t.string :channel

      t.timestamps
    end
  end
end
