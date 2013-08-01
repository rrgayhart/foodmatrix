class CreateSnacks < ActiveRecord::Migration
  def change
    create_table :snacks do |t|
    	t.string :name
    	t.text :body

    	t.timestamps
    end
  end
end
