class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      # t.references :product, null: false, foreign_key: true
      t.integer :user_id
      # t.integer :quantity
      t.text :orderstatus
      t.timestamps
    end
  end
end
