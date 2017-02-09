class Transfer < ApplicationRecord
  belongs_to :tank
  validates :quantity, :tank, presence: true
  validates :quantity, numericality: { greater_than: 0 }
end
