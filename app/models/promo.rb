class Promo < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :type, presence: true
  validates :start, presence: true
  validates :end, presence: true
  has_attachments :photos, maximum: 4
  belongs_to :type
end
