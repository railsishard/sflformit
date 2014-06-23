class CreateGardeners < ActiveRecord::Migration
  def change
    create_table :gardeners do |t|
      t.string :first_name
      t.string :last_name
      t.integer :contact_number
      t.string :address
      t.references :group, index: true

      t.timestamps
    end
  end
end
