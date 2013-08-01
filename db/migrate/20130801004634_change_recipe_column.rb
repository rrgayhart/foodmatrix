class ChangeRecipeColumn < ActiveRecord::Migration
  def up
  	change_column :recipes, :time, :integer
  end

  def down
  	change_colum :recipes, :time, :decimal
  end
end
