module Queries
  class FetchCenter < Queries::BaseQuery
    type Types::CenterType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Center.find(id)
    end
  end
end