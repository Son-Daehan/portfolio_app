class CreateEducations < ActiveRecord::Migration[6.1]
  def change
    create_table :educations do |t|
      t.string :title
      t.string :school
      t.string :user
      t.string :date

      t.timestamps
    end
  end
end
