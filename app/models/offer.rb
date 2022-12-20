class Offer < ApplicationRecord
  belongs_to :musician
  belongs_to :contractor
  has_many :chats
end
