class CreatePreps < ActiveRecord::Migration
  def change
    create_table :preps do |t|
      t.string :name
      t.text :body
      t.references :protein, index: true

      t.timestamps
    end
  end
end
