class ChangePriceOnProducts < ActiveRecord::Migration[5.1]
  def change
    # change_column :products, :price, "numeric USING CAST(price AS numeric)", precision: 6, scale: 2
    remove_column :products, :price, :integer
    add_column :products, :price, :decimal, precision: 8, scale: 2
  end
end
