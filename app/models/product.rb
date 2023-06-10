class Product < ApplicationRecord
    has_many :cart_items
    has_many :orders, :through => :cart_items
    accepts_nested_attributes_for :orders
    accepts_nested_attributes_for :cart_items
end