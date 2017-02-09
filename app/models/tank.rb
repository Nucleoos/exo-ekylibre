class Tank < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :treatments, dependent: :destroy
  has_many :transfers, dependent: :destroy

  def volume
    transfers.sum(:quantity)
  end
end
