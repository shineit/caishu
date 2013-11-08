class CreateCounttexts < ActiveRecord::Migration
  def change
    create_table :counttexts do |t|
      t.integer :ii

      t.timestamps
    end
  end
end
