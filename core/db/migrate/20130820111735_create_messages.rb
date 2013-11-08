class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.string :response
      t.integer :status

      t.timestamps
    end
  end
end
