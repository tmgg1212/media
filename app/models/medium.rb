class Medium < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :text
    validates :category_id
    validates :image
  end

  belongs_to :user
  belongs_to :category
  belongs_to :image
end

