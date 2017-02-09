class Tank < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :treatments, dependent: :destroy
end
