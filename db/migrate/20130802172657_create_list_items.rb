class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
    	t.references :ingrediant
    	t.integer :quantity
      t.timestamps
    end
  end
end
