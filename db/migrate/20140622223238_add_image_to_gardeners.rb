class AddImageToGardeners < ActiveRecord::Migration
  def change
    add_column :gardeners, :image, :string
  end
end
