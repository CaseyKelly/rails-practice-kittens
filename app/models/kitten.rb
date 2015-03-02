class Kitten < ActiveRecord::Base
  has_many :categories
  validates :image, presence: true

end
