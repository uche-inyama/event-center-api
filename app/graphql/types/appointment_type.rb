module Types
  class AppointmentType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: true
    field :hall, String, null: true
    field :email, String, null: true
    field :city, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :date, GraphQL::Types::ISO8601Date, null: true
    field :user_id, Integer, null: true
    field :center_id, Integer, null: true
  end
end
