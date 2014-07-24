class AddTrainerIdToGroups < ActiveRecord::Migration
  def change
   add_column :groups, :trainer_id, :integer
  end
end
