class CreateWeblinks < ActiveRecord::Migration
  def change
    create_table :weblinks do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
