class CreateAttendanceRegistersTrainingSessionsJoinsTable < ActiveRecord::Migration
  def change
    create_table :attendance_registers_training_sessions, id: false do |t|
      t.integer :attendance_register_id
      t.integer :training_session_id
    end
  end
end
