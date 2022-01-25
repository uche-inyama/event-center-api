class AddImageToCenters < ActiveRecord::Migration[6.0]
  def change
    add_column :centers, :image, :string
  end
end
