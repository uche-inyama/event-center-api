module Queries
  class FetchCenter < Queries::BaseQuery
    type Types::CenterInputType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Center.find(id)
    end
  end
end