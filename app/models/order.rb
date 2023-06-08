class Order < ApplicationRecord
    has_and_belongs_to_many :products
    belongs_to :user
    accepts_nested_attributes_for :products, allow_destroy: true
end
