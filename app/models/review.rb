class Review < ApplicationRecord
  belongs_to :booking, dependent: :destroy
  belongs_to :user

  validates :comment, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
