class User < ApplicationRecord
    has_secure_password
    has_many :orders
    has_many :products, :through => :orders
    validates :email, :uniqueness => true, :presence => true
    after_create :generate_active_order

    # handling forgot password logic
    def generate_password_token!
        self.reset_password_token = generate_token
        self.reset_password_sent_at = Time.now.utc
        save!(validate: false)
    end

    def password_token_valid?
        (self.reset_password_sent_at + 4.hours) > Time.now.utc
    end

    def reset_password!(password)
        self.reset_password_token = nil
        self.password = password
        save!
    end

    # handling active order logic
    def has_active_order?
        orders.exists?(orderstatus: 'active')
    end

    private

    # handling forgot pw logic
    def generate_token
        SecureRandom.hex(10)
    end

    # handling active order
    def generate_active_order
        orders.create(orderstatus: 'active') unless has_active_order?
    end

end