class CreateGoodfriends < ActiveRecord::Migration
  def change
    create_table :goodfriends do |t|
      t.string :qq
      t.string :qq_name
      t.string :weixin
      t.string :weixin_name
      t.integer :age
      t.integer :gender
      t.string :truth_name
      t.string :photo
      t.string :telephone

      t.timestamps
    end
  end
end
