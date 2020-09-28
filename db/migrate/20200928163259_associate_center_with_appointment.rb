class AssociateCenterWithAppointment < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :center, foreign_key: true
  end
end
