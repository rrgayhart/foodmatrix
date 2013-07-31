class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :body
      t.time :time
      t.references :vegetable, index: true

      t.timestamps
    end
  end
end
