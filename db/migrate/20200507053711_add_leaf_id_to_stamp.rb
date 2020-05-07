class AddLeafIdToStamp < ActiveRecord::Migration[5.2]
  def change
    add_column :stamps, :leaf_id, :integer
  end
end
