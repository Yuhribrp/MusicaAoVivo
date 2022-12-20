class Offer < ApplicationRecord
  belongs_to :musician
  belongs_to :contractor
  has_many :chats

  validates :price, :duration, :event_date, :event_hour, :equipment, presence: true
end
