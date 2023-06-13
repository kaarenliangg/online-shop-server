class Order < ApplicationRecord
    has_many :cart_items
    has_many :products, :through => :cart_items
    belongs_to :user
    accepts_nested_attributes_for :products, allow_destroy: true
    accepts_nested_attributes_for :cart_items, allow_destroy: true
    after_save :generate_active_order_for_user, if: :order_status_changed?

    private

    def order_status_changed?
        user.present? && user.orders.where(orderstatus: 'active').empty?
    end

    def generate_active_order_for_user
        user.orders.create(orderstatus: 'active')
    end
end
