class KittenCategory < ActiveRecord::Base
  belongs_to :kitten
  belongs_to :category
end
