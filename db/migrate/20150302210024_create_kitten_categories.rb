class CreateKittenCategories < ActiveRecord::Migration
  def change
    create_table :kitten_categories do |t|
      t.belongs_to :kitten, index: true
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
