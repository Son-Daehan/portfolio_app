class RenameColumnToProjects < ActiveRecord::Migration[6.1]
  def change
    rename_column :projects, :author, :user_id
  end
end
