class Address < ApplicationRecord
  has_many :contractors
  has_many :musicians

  validates :zipcode, presence: true
  validates :street, presence: true, lenght: { minimum: 5}
  validates :complement, presence: true
  validates :neighborhood, presence: true
  validates :city, presence: true
  validates :state, presence: true
end
