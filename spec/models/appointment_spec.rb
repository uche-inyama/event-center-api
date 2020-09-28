require 'rails_helper'

RSpec.describe Appointment, type: :model do
  it 'validates presence of' do
    appointment = Appointment.create(
      hall: '',
      city: '',
      username: '',
      email: '',
    )
    appointment.valid?
    expect(appointment.errors[:username]).to include('can\'t be blank')
    expect(appointment.errors[:hall]).to include('can\'t be blank')
    expect(appointment.errors[:city]).to include('can\'t be blank')
    expect(appointment.errors[:email]).to include('can\'t be blank')
  end
end
