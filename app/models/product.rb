class Product < ApplicationRecord
    has_and_belongs_to_many :orders
    accepts_nested_attributes_for :orders, allow_destroy: true
end