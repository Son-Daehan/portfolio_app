class Project < ApplicationRecord

  validates :title, presence: true
  validates :user_id, presence: true
  validates :image_url, presence: true


  belongs_to :user

end
