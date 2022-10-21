class User < ApplicationRecord
  has_many :courses
  has_many :reading_times
end
