class Picture < ActiveRecord::Base
  attr_accessible :id, :image
  belongs_to :book
  mount_uploader :image, ImageUploader
end
