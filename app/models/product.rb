class Product < ApplicationRecord
  belongs_to :local
  has_many :orders
  has_many :customers, through: :orders
end
