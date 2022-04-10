class AddColumnToEducations < ActiveRecord::Migration[6.1]
  def change
    add_column :educations, :date_end, :string
  end
end
