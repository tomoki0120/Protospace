class Proto < ActiveRecord::Base
  has_many :images
  belongs_to :user

  accepts_nested_attributes_for :images

  def images_sub
    images.sub
  end

  def image_main_photo
    images.main.first.photo
  end

end
