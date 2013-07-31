class CreateSpices < ActiveRecord::Migration
  def change
    create_table :spices do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
