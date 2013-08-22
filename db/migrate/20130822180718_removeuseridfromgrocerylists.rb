class Removeuseridfromgrocerylists < ActiveRecord::Migration
  def change
  	  	change_table :grocery_lists do |t|
  		t.remove :user_id
  end
end
end
