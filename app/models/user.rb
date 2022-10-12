class User < ApplicationRecord
  has_many :user_parties
  has_many :parties, through: :user_parties
  validates :name, :email, presence: true
  validates_uniqueness_of :email
  has_secure_password
end

