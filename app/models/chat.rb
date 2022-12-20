class Chat < ApplicationRecord
  belongs_to :offer

  has_many :messages
end
