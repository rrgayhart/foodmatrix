class CreateIngrediants < ActiveRecord::Migration
  def change
    create_table :ingrediants do |t|
    	t.string :name
      t.timestamps
    end
  end
end
