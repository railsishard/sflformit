class CreateAttendanceRegisters < ActiveRecord::Migration
  def change
    create_table :attendance_registers do |t|
      t.references :gardener, index: true
      t.references :session, index: true
      t.boolean :attended

      t.timestamps
    end
  end
end
