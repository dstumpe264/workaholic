class User < ApplicationRecord

  validates :name, presence: true, length: {minimum: 5}
  validates :pwd, presence: true, length: {minimum: 5}

  has_many :jobs
end
