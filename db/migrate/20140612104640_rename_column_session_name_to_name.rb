class RenameColumnSessionNameToName < ActiveRecord::Migration
  def up
    rename_column :training_sessions, :session_name, :name
  end
  def down
    rename_column :training_sessions, :name, :session_name
  end
end
