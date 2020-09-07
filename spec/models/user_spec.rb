# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'validates presence' do
    user = User.new
    user.username = ''
    user.valid?
    expect(user.errors[:username]).to include('can\'t be blank')
  end
end
