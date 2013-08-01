class AddTimetoPreps < ActiveRecord::Migration
  def change
  	add_column :preps, :time, :decimal, :precision => 8, :scale => 2
  end
end
