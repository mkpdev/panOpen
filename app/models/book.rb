class Book < ApplicationRecord
  has_many :reading_times
  belongs_to :course
end
