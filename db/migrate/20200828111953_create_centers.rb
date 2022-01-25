# frozen_string_literal: true

class CreateCenters < ActiveRecord::Migration[6.0]
  def change
    create_table :centers do |t|
      t.string :building
      t.string :hall
      t.text :address
      t.string :city
      t.string :state
      t.integer :price
      t.integer :capacity

      t.timestamps
    end
  end
end
