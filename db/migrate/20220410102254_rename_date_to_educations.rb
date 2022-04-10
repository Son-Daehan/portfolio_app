class RenameDateToEducations < ActiveRecord::Migration[6.1]
  def change
    rename_column :educations, :date, :date_beginning
  end
end
