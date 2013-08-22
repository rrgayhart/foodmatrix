class CreateGroceryList < ActiveRecord::Migration
  def change
    create_table :grocery_lists do |t|
    	t.integer  "ingredient_id"
    	t.integer  "user_id"
    	t.integer :quantity
    end
  end
end
