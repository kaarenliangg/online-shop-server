class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :product_code
			t.text :product_name
			t.text :product_categories
			t.text :product_description 
			t.text :image
      t.decimal :costprice, precision: 10, scale: 2
      t.decimal :retailprice, precision: 10, scale: 2

			t.timestamps
    end
  end
end
