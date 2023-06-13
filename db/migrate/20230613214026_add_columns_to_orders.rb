class AddColumnsToOrders < ActiveRecord::Migration[5.2]
	def change
		add_column :orders, :email, :string
		add_column :orders, :shipping_address, :text
		add_column :orders, :stripe_payment_intent, :text
		add_column :orders, :shipping_cost, :float
		add_column :orders, :amount_total, :float
		add_column :orders, :amount_subtotal, :float
		add_column :orders, :shipping_name, :text
	end
end
