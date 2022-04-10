class RenameColumnToEducations < ActiveRecord::Migration[6.1]
  def change
    rename_column :educations, :user, :user_id
  end
end
