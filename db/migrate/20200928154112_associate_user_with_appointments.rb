class AssociateUserWithAppointments < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :user, foreign_key: true
  end
end
