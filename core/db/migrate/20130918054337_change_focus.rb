class ChangeFocus < ActiveRecord::Migration
  def change
    change_table :focus do |t|
      t.rename :category, :photo_category_id
    end
  end
end
