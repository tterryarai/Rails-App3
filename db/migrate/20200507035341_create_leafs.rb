class CreateLeafs < ActiveRecord::Migration[5.2]
  def change
    create_table :leafs do |t|
      t.string :name, null: false
      t.string :period
      t.text :desc
      t.integer :status, default: 999, null: false
      t.integer :group1, default: 999
      t.integer :group2, default: 999
      t.integer :group3, default: 999

      t.timestamps
    end
  end
end
