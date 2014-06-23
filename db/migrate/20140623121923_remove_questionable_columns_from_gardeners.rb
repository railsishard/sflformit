class RemoveQuestionableColumnsFromGardeners < ActiveRecord::Migration
  def change
remove_column :gardeners,:image
  end
end
