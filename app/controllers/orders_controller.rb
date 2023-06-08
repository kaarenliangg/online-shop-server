class OrdersController < ApplicationController
    skip_before_action :is_authorized

    def index
        @orders = Order.all

        render json: @orders, include: [:products]
    end
    
    def new
        @order = Order.new

        render json: @order
    end

    def create
        order = Order.create order_params

        render json: @order, :status => :created
        
    end
    
    def edit
        @order = Order.find params[:id]

        render json: @order, :status => :ok
    end
    
    def update
        order = Order.find params[:id]
        order.update order_params
        render json: @order, :status => :ok
    
    end
    
    def show
        @order = Order.find params[:id]

        render json: @order, include: [:products]
    end
    
    def destroy
        order = Order.find params[:id]
        order.destroy
    end
    
    private
    
    def order_params
        params.require(:order).permit(:product_id, :user_id, :orderstatus)
    end

end
