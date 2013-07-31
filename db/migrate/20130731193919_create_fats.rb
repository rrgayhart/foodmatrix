class CreateFats < ActiveRecord::Migration
  def change
    create_table :fats do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
