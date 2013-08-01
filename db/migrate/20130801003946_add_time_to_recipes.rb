class AddTimeToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :time, :decimal
  end
end
