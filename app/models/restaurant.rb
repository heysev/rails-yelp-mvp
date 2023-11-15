class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(japanese french chinese italian belgian),
    message: "%{value} is not a valid category" }
end
