class Profile < ApplicationRecord
  has_many :musicians
  has_many :contractors
end
