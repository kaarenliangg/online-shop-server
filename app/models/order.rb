class Order < ApplicationRecord
    has_many :cart_items
    has_many :products, :through => :cart_items
    belongs_to :user
    accepts_nested_attributes_for :products, allow_destroy: true
    accepts_nested_attributes_for :cart_items, allow_destroy: true
end
