class AddColumnToExperience < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :user_id, :int
  end
end
