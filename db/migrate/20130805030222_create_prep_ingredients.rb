class CreatePrepIngredients < ActiveRecord::Migration
  def change
    create_table :prep_ingredients do |t|
      t.integer :prep_id
      t.integer :ingredient_id
      t.integer :quantity

      t.timestamps
    end
  end
end
