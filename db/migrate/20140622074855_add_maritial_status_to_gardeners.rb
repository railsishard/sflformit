class AddMaritialStatusToGardeners < ActiveRecord::Migration
  def change
  add_column :gardeners, :maritial_status, :string
  end
end
