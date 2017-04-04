class Brand < ApplicationRecord
  has_attachment :logo
  belongs_to :product
  validates :logo, presence: true
end
