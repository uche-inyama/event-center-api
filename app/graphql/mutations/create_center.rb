module Mutations
  class AddCenter < Mutations::BaseMutation
    null true
    argument :params, Types::Input::CenterInputType
    field :creat_center, Types::CenterType

    def resolve(params:)
      center_params = Hash params
      center = Center.new(center_params)
      if center.save
        center
      end
    end
  end
end