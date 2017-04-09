class Product < ActiveRecord::Base

  has_one :specification, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

end
