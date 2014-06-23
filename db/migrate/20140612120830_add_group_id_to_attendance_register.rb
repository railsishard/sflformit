class AddGroupIdToAttendanceRegister < ActiveRecord::Migration
  def change
    add_column :attendance_registers, :group_id, :integer
  end
end
