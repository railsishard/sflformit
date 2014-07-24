class AddUsernameToTrainers < ActiveRecord::Migration
  def change
    add_column :trainers, :username, :string
  end
end
