class AddDefaultOrderStatus < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :orderstatus, :string, :default => 'active'
  end
end