class Profile < ApplicationRecord
  has_many :musicians
  has_many :contractors

  validates :title, presence: true
end
