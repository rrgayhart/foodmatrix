class CreateVegetablePreps < ActiveRecord::Migration
  def change
    create_table :vegetable_preps do |t|
    	t.integer :prep_id
    	t.integer :vegetable_id
    end
    create_table :spice_preps do |t|
    	t.integer :prep_id
    	t.integer :spice_id
    end
    create_table :snack_preps do |t|
    	t.integer :prep_id
    	t.integer :snack_id
    end
    create_table :fat_preps do |t|
    	t.integer :prep_id
    	t.integer :fat_id
    end
  end
end
