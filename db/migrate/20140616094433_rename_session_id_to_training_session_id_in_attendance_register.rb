class RenameSessionIdToTrainingSessionIdInAttendanceRegister < ActiveRecord::Migration
  def up
	rename_column :attendance_registers, :session_id, :training_session_id
  end
 
  def down
	rename_column :attendance_registers, :training_session_id, :session_id
  end
end

