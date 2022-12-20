class Address < ApplicationRecord
  has_many :contractors
  has_many :musicians
end
