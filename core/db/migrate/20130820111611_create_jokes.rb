class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
