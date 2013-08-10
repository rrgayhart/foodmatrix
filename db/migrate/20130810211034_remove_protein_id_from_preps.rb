class RemoveProteinIdFromPreps < ActiveRecord::Migration
  def change
  	change_table :preps do |t|
  		t.remove :protein_id
  	end
  end
end
