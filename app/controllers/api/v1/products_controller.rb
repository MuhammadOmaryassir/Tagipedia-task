module Api
  module V1
    class ProductsController < ApplicationController
      def show
        product =  Product.find(params[:id])
        render json: {status: 'SUCCESS', message:'Product Found', data:product},status: :ok
      end
    end
  end
end