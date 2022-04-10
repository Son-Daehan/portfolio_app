class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :employer
      t.string :title
      t.text :description
      t.string :date_beginning
      t.string :date_end

      t.timestamps
    end
  end
end
