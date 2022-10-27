class RecordUpdateJob < ApplicationJob
  queue_as :default

  def perform(*_args)
    users = User.students
    users.each do |user|
      reading_time = ReadingTime.find_by(user_id: user)
      count = reading_time.count + rand(1..8)
      reading_time.update(count: count)
    end
  end
end
