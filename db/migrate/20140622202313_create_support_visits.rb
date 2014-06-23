class CreateSupportVisits < ActiveRecord::Migration
  def change
    create_table :support_visits do |t|
      t.integer :gardener_id
      t.timestamps
    end
  end
end
