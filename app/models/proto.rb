class Proto < ActiveRecord::Base
  has_many :images, dependent: :delete_all
  belongs_to :user
  has_many :likes, dependent: :delete_all

  accepts_nested_attributes_for :images

  def images_sub
    images.sub
  end

  def image_main_photo
    images.main.first.photo
  end

  def like_user(user)
   likes.find_by(user_id: user)
  end

end
