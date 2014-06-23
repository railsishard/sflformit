class AddLivingArrangementsToGardener < ActiveRecord::Migration
  def change
  add_column :gardeners, :living_arrangements, :integer
  end
end
