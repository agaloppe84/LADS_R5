class Product < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :type, presence: true
  has_attachments :photos, maximum: 4
  belongs_to :type
  has_many :infos, dependent: :destroy
  has_many :powers, dependent: :destroy
  has_many :brands, dependent: :destroy
end
