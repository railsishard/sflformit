class GardenerStatus < ActiveRecord::Migration
  def up
    add_column :gardeners, :status, :string
  end

  def down
    remove_column :gardeners, :status
  end
end
