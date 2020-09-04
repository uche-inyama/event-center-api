require 'rails_helper'

describe 'post', :type => :request do
  before do
    post '/api/v1/centers', params: {:center => {:building => 'Avalon',
    :hall => 'Brisk', :city => 'Imogeneborough',
    :state => 'California', :price => 1200, :capacity => 300, :image =>[] }}
  end
  it 'returns the name of the building' do
    expect(JSON.parse(response.body)['building']).to eq('Avalon')
  end

  it 'returns the name of the hall' do
    expect(JSON.parse(response.body)['hall']).to eq('Brisk')
  end 

  it 'returns the name of the city' do
    expect(JSON.parse(response.body)['city']).to eq('Imogeneborough')
  end

  it 'returns the name of the state' do
    expect(JSON.parse(response.body)['state']).to eq('California')
  end

  it 'returns the price of the event center' do
    expect(JSON.parse(response.body)['price']).to eq(1200)
  end

  it 'returns the capacity of the event center' do
    expect(JSON.parse(response.body)['capacity']).to eq(300)
  end

  it 'return the image' do
    expect(JSON.parse(response.body)['image']).to eq(nil)
  end
end