class Contractor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :profile
  belongs_to :address
  has_many :offers
  has_one_attached :avatar

  validates :full_name, :category, :phone_number, presence: true
  validates :full_name, format: { with: /\A[a-zA-Z]+/, message: "Use only letters and white space" }
end
