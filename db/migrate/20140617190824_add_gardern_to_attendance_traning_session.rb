class AddGardernToAttendanceTraningSession < ActiveRecord::Migration
  def change
    add_reference :attendance_registers_training_sessions, :gardener, index: true
  end
end
