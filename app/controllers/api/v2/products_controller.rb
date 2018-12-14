module Api
  module V2
    class ProductsController < ApplicationController
      def create
        product_name = product_params['name']
        
        # search product by it's name 
        product = Product.find_by_sql("SELECT * From products WHERE product_name ='#{product_name}'")
       
        # if the item found
        if product[0] != nil 
          render json: {status: 'SUCCESS', message:'Product Found', data:product},status: :ok
        else
          # if the item not found
          render json: {status: 'FAILED', message:'Product Not Found'},status: :not_found
        end
      end


      private
      # get the Prdiuct name from the Payload
      def product_params
        params.permit(:name)
      end
    end
  end
end