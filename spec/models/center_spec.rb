require 'rails_helper'
require 'pp'

RSpec.describe Center, type: :model do
  it 'validates presence of 'do
    center = Center.create(
      building: '', hall: '',
      city: '', state: '',
      capacity: '', price: ''
    )
    center.valid?
    expect(center.errors[:building]).to include('can\'t be blank')
    expect(center.errors[:hall]).to include('can\'t be blank')
    expect(center.errors[:city]).to include('can\'t be blank')
    expect(center.errors[:state]).to include('can\'t be blank')
    expect(center.errors[:capacity]).to include('can\'t be blank')
    expect(center.errors[:price]).to include('can\'t be blank')
  end
end
