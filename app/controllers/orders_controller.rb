class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end
    
    def new
        @order = Order.new
    end

    def create
        order = Order.create order_params
        
    end
    
    def edit
        @order = Order.find params[:id]
    end
    
    def update
        order = Order.find params[:id]
        order.update order_params
    
    end
    
    def show
        @order = Order.find params[:id]
    end
    
    def destroy
    order = Order.find params[:id]
    order.destroy
    
    end
    
    private
    
    def order_params
    params.require(:order).permit()
    end

end
