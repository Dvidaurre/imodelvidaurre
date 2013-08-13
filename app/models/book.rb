class Book < ActiveRecord::Base
  attr_accessible :title
  has_many :pictures
end
