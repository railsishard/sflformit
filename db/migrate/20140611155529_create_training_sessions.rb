class CreateTrainingSessions < ActiveRecord::Migration
  def change
    create_table :training_sessions do |t|
      t.references :attendance_registers
      t.string :session_name
      t.integer :date_held

      t.timestamps
    end
  end
end
