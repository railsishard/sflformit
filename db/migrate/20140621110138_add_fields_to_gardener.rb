class AddFieldsToGardener < ActiveRecord::Migration
  def change
 add_column :gardeners, :id_number, :integer
 add_column :gardeners, :state, :string
  end
end
