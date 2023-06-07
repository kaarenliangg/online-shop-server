class RenamePriceAddingColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :costprice, :cost_price
    rename_column :products, :retailprice, :retail_price
    rename_column :products, :product_categories, :product_category
    add_column :products, :animal_category, :text
  end
end
