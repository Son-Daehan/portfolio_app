class AddDescriptionToEducations < ActiveRecord::Migration[6.1]
  def change
    add_column :educations, :description, :text
  end
end
