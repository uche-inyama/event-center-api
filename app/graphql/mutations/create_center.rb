module Mutations
  class AddCenter < Mutations::BaseMutation
    argument :params, Types::Input::CenterInputType, null: false
    field :creat_center, Types::CenterType, null: false

    def resolve(params:)
      center_params = Hash params
      center = Center.new(center_params)
      if center.save
        center
      end
    end
  end
end