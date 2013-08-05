class FixIngredients < ActiveRecord::Migration
  def up
  	drop_table :ingrediants_list_items
  	drop_table :list_items
  	rename_table :ingrediants, :ingredients
  end
end
