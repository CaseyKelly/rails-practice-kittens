class KittenCategory < ActiveRecord::Base
  belongs_to :kitten
  belongs_to :category

  validates :category_id, presence: true
  validate :unique_ids

 def unique_ids
   if KittenCategory.find_by(category_id: category_id, kitten_id: kitten_id)
     errors.add(:base, 'Category already exists for this kitten')
   end
 end
end
