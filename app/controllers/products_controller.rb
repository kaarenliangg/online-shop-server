class ProductsController < ApplicationController
    skip_before_action :is_authorized
    
    def index
        @products = Product.all

        render json: @products
    end

    def new
        @product = Product.new

        render json: @product
    end

    def update
        product = Product.find params[:id]
        if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        product.image = req["public_id"]
        
        end
        product.update_attributes product_params
        product.save

        render json: product, :status => :ok
    end

    def create
        product = Product.create product_params
        if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        product.image = req["public_id"]
        product.save
        end

        render json: @product, :status => :created
    end

    def edit
        @product = Product.find params[:id]

        render json: @product, :status => :ok
    end
    
    def show
        @product = Product.find params[:id]

        render json: @product
    end

    def destroy
        product = Product.find params[:id]
        product.destroy
    end

    private

    def user_params
        params.require(:product).permit(:product_code, :product_name, :product_categories, :product_description , :image, :costprice, :retailprice )
    end
end
