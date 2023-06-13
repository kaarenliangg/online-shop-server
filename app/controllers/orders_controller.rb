class OrdersController < ApplicationController
    # include ApplicationHelper
    skip_before_action :is_authorized

    def index
        @orders = Order.all

        render json: @orders, include: [:products]
    end
    
    def new
        @order = Order.new
        @user = User.find(params[:user_id])

        @user.orders << @order

        render json: @order, include: [:products]
    end

    def create
        order = Order.create order_params

        render json: @order, :status => :created
    end
    
    def edit
        @order = Order.find params[:id]
        if params[:product_id].present?
            @product = Product.find(params[:product_id]) 
            @order.products << @product
        end
        render json: @order, :status => :ok
    end
    
    def update
        @order = Order.find params[:id]
        if params[:product_id].present?
            @product = Product.find(params[:product_id]) 
            @order.products << @product
        end
        render json: @order, :status => :ok
    end

    def addcart
        @order = Order.find params[:order_id]
        if params[:product_id].present?
            if @order.products.exists?(params[:product_id])
                @cart_item = @order.cart_items.where({product_id: params[:product_id]}).first
                @cart_item.increment! :quantity
            else
                @product = Product.find(params[:product_id]) 
                @order.products << @product
            end
        end
        render json: @order, :status => :ok
    end

    def removecart
        @order = Order.find params[:order_id]
        if params[:product_id].present?
            if @order.products.exists?(params[:product_id])
                @cart_item = @order.cart_items.where({product_id: params[:product_id]}).first
                if positivetest(@cart_item.quantity)
                    @cart_item.decrement! :quantity
                    render json: @cart_item, :status => :ok
                else
                    @cart_item.delete
                    render json: @order, :status => :ok
                end
            end
        end
    end

    def show
        @order = Order.find params[:id]

        render json: @order, include: {cart_items: {include: {product: {}}}}
    end
    
    def destroy
        @order = Order.find params[:id]
        # this currently deletes ALL matching items, as it's deleting by ID
        if params[:product_id].present?
            @product = Product.find(params[:product_id])
            @order.products.delete(@product)

        end
        render json: @order, :status => :ok
    end

    private
    
    def order_params
        params.require(:order).permit(:user_id, :order_id, :orderstatus, {product_ids: []}, :email, :shipping_address, :stripe_payment_intent, :shipping_cost, :amount_total, :amount_subtotal, :shipping_name)
    end

# this feels like it should be different
    def positivetest(int)
        if int < 2
            return false
        else
            return true
        end
    end

    def generate_active_order

    end

end
