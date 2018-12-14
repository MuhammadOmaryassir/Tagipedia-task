module Api
  module V1
    class ProductsController < ApplicationController
      def index
        vars = request.query_parameters
        name = vars['name']
        product =  Product.find_or_initialize_by(product_name: name)
        render json: {status: 'SUCCESS', message:'Product Found', data:product},status: :ok

      end
    end
  end
end