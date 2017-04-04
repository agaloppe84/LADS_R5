class Type < ApplicationRecord
  validates :name, presence: true
  has_many :products, dependent: :destroy
  has_many :promos, dependent: :destroy
  has_many :albums, dependent: :destroy
end
