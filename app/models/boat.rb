class Boat < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  include PgSearch::Model
  pg_search_scope :search_by_name_and_location,
    against: [ :name, :location ],
    using: {
      tsearch: { prefix: true }
    }

  BOAT_CATEGORIES = %w[Bracera Banana-Boat Barge Dinghy Pedalo Punt Yacht Ship Catamaran Hovercraft]
  validates :name, :location, :price, presence: true
  validates :boat_type, inclusion: { in: BOAT_CATEGORIES }
  validates :guests, inclusion: { in: 0..100 }, numericality: { only: true }
  validates :docked, inclusion: [true, false]
  validates :image_url, presence: true

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
    { from: range[0], to: range[1] }
    end
  end
end
