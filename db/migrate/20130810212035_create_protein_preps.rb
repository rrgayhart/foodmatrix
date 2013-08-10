class CreateProteinPreps < ActiveRecord::Migration
  def change
    create_table :protein_preps do |t|
    	t.integer :prep_id
    	t.integer :protein_id
    end
  end
end
