class CreatePhilosophies < ActiveRecord::Migration
  def change
    create_table :philosophies do |t|
      t.string :content
      t.string :title

      t.timestamps
    end
  end
end
