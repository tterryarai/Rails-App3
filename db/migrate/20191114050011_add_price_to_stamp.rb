class AddPriceToStamp < ActiveRecord::Migration[5.2]
  def change
    add_column :stamps, :price, :string
  end
end
