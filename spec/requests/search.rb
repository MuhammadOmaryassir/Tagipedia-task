require 'rails_helper'
# Test To V1 Api
RSpec.describe 'Search requests V1' do
  describe 'GET /api/v1/products' do
    it 'returns a product' do
      get('/api/v1/products?name=IphoneX')
      json = JSON.parse(response.body)
      expect(json['status']).to eql('SUCCESS')
      expect(response.status).to eql(200)
    end
  end
end

# Test To V1 Api
RSpec.describe 'Search requests V2' do
  describe 'POST /api/v2/products' do
    it 'returns a product' do
      post '/api/v2/products', :params => {"name":"IphoneX"}
      json = JSON.parse(response.body)
      expect(json['status']).to eql('SUCCESS')
      expect(response.status).to eql(200)
    end
  end
end