class AddGardenLocationToGardeners < ActiveRecord::Migration
  def change
  add_column :gardeners, :garden_location, :string
  add_column :gardeners, :garden_size_l, :integer
  add_column :gardeners, :garden_size_w, :integer
  end
end
