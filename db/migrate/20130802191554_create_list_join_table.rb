class CreateListJoinTable < ActiveRecord::Migration
  def change
    create_join_table :ingrediants, :list_items do |t|
      t.index [:ingrediant_id, :list_item_id]
      # t.index [:list_item_id, :ingrediant_id]
    end
  end
end
