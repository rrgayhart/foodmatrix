class AddTimeToPreps < ActiveRecord::Migration
  def change
    add_column :preps, :time, :integer
  end
end
