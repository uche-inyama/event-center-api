module Types
  class CenterType < Types::BaseObject
    field :id, ID, null: false
    field :building, String, null: true
    field :hall, String, null: true
    field :address, String, null: true
    field :city, String, null: true
    field :state, String, null: true
    field :price, Integer, null: true
    field :capacity, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
