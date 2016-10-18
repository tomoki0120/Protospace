class Proto < ActiveRecord::Base
  has_many :images, dependent: :delete_all
  belongs_to :user
  has_many :likes, dependent: :delete_all
  has_many :comments,dependent: :delete_all

  accepts_nested_attributes_for :images

  def self.pagination_newest_per(param)
    includes(:images,:user).order("created_at DESC").page(param).per(10)
  end

  def self.pagination_popular_per(param)
    includes(:images,:user).order("likes_count DESC").page(param).per(10)
  end

  def self.pagination_prototype_per(param)
    includes(:images,:user).page(param).per(10)
  end

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
