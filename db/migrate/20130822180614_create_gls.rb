class CreateGls < ActiveRecord::Migration
  def change
    create_table :gls do |t|
      t.integer :grocery_list_id
      t.integer :user_id

      t.timestamps
    end
  end 
end
