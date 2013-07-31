class CreateMarinades < ActiveRecord::Migration
  def change
    create_table :marinades do |t|
      t.text :name
      t.text :body
      t.time :time
      t.references :spice, index: true

      t.timestamps
    end
end
end