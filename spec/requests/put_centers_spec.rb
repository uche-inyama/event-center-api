require 'rails_helper'

describe "PUT /api/v1/centers/:id", :type => :request do
  
  before(:each) do
    @center =  FactoryBot.create(:center)
  end

  it 'updates a center' do
    @new_hall = Faker::Name.name 
    put  "api/v1/centers/#{@center.id}",  params: {:center => {:building => 'Avalon',
      :hall => @new_hall, :city => 'Imogeneborough',
      :state => 'California', :price => 1200, :capacity => 300, :image =>[] }}

    expect(response.status).to eq(202)
  end
end