class AddUnitOfMeasureToIngredients < ActiveRecord::Migration
  def change
  	add_column :ingredients, :unit_of_measure, :string
  end
end
