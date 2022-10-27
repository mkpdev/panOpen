class User < ApplicationRecord
  has_many :courses
  has_many :reading_times

  scope :students, ->{where(role: "student")}
end
