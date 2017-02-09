class Treatment < ApplicationRecord
  belongs_to :tank
  validates :product, :tank, :name, presence: true
end
