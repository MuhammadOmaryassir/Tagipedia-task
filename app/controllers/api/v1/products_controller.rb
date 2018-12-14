module Api
  module V1
    class ProductsController < ApplicationController
      def index
        url = request.query_parameters
        name = url['name']
        product =  Product.where(product_name: name)
        if product[0] != nil 
          render json: {status: 'SUCCESS', message:'Product Found', data:product},status: :ok
        else
          render json: {status: 'FAILED', message:'Product Not Found'},status: :not_found
        end
      end
    end
  end
end