class RemoveFieldsFromAttendanceRegister < ActiveRecord::Migration
  def change
    remove_column :attendance_registers, :gardener_id
  end
end
