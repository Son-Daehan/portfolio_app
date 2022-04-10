class AddColumnToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :title, :string
    add_column :projects, :author, :string
    add_column :projects, :image_url, :string
  end
end
