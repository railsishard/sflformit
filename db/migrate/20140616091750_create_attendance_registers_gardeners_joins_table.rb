class CreateAttendanceRegistersGardenersJoinsTable < ActiveRecord::Migration
  def change
    create_table :attendance_registers_gardeners, id: false  do |t|
      t.integer :attendance_register_id
      t.integer :gardener_id 
end    
  end
end
