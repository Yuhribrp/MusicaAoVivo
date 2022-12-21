class Musician < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :address
  belongs_to :profile
  has_many :offers
  has_one_attached :avatar

  validates :first_name, presence: true, length: { minimum: 3 }
  validates :last_name, presence: true, length: { minimum: 3 }
  validates :artistic_name, presence: true
  validates :artistic_bio, presence: true, length: { minimum: 20 }
  validates :genre, presence: true
  validates :category, presence: true
  validates :date_of_birth, presence: true
  validates :phone_number, presence: true

  validates :last_name, format: { with: /\A[a-zA-Z]+/, message: "Use only letters and white space" }
  validates :first_name, format: { with: /\A[a-zA-Z]+/, message: "Use only letters and white space" }
end
