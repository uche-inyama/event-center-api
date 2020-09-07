class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :username
      t.string :hall
      t.string :email
      t.string :city

      t.timestamps
    end
  end
end
