class AddRoleToTrainers < ActiveRecord::Migration
  def change
    add_column :trainers, :role, :string
  end
end
