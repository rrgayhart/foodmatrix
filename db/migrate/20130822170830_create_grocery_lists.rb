class CreateGroceryLists < ActiveRecord::Migration
  def change
    create_table :grocery_lists do |t|

      t.timestamps
    end
  end
end
