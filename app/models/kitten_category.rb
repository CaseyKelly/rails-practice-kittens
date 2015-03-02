class KittenCategory < ActiveRecord::Base
  belongs_to :kitten
  belongs_to :category

  validates :category_id, presence: true, uniqueness: true
end
