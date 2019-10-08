class CreateStamps < ActiveRecord::Migration[5.2]
  def change
    create_table :stamps do |t|
      t.string :name, null: false
      t.text :desc
      t.integer :status, default: 999, null: false
      t.integer :group1, default: 999
      t.integer :group2, default: 999
      t.integer :group3, default: 999
      t.string :issue_date
      t.string :image_path
      t.string :remark1
      t.string :remark2
      t.string :remark3
      t.string :remark4
      t.string :remark5

      t.timestamps
    end
  end
end
