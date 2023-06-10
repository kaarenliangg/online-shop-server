class CartItem < ApplicationRecord
    belongs_to :order
    belongs_to :product

    accepts_nested_attributes_for :order, allow_destroy: true
    accepts_nested_attributes_for :product, allow_destroy: true
end
