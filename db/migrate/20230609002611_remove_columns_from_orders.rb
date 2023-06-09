class RemoveColumnsFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_index :orders, name: "index_orders_on_product_id"
    remove_index :orders, name: "index_orders_on_user_id"
  end
end
