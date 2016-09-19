class Image < ActiveRecord::Base
  mount_uploader :photo, ImageUploader

  belongs_to :proto
  
  enum status: %i(main sub)

  validates :photo, presence: true

end
