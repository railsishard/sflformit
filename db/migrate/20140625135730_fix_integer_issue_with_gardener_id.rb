class FixIntegerIssueWithGardenerId < ActiveRecord::Migration
def change
change_column :gardeners, :id_number, :bigint
end
end
