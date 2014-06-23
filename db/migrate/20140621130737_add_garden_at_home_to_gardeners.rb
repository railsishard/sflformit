class AddGardenAtHomeToGardeners < ActiveRecord::Migration
  def change
  add_column :gardeners, :garden_at_home, :boolean
  end
end
