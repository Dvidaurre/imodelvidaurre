class Book < ActiveRecord::Base
  attr_accessible :title
  has_many :pictures, :dependent => :destroy
  belongs_to :user
end
