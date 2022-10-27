class UserPresenter
  def initialize(users)
    @users = users
  end

  def user_data
    data = {}
    users = []
    @users.each do |user|
      data = { 'id' => user.id, 'email' => user.email }
      temp_data = reading_time(user)
      data.merge!(temp_data) if temp_data.present?
      users << data
    end
    users
  end

  private

  def reading_time(user)
    time = find_time(user)
    if time.present?
      {
        'book_name' => books(time),
        'course_name' => course(time),
        'reading_time' => time.count
      }
    end
  end

  def books(time)
    book = time.book if time.present?
    book.name if book.present?
  end

  def course(time)
    book = time.book if time.present?
    book.course.name if book.present?
  end

  def find_time(user)
    reading_time = ReadingTime.find_by(user_id: user)
    reading_time if reading_time.present?
  end
end
