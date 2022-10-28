class UserPresenter
  def initialize
    @students = User.students
  end

  def user_data
    @students.collect { |u| { id: u.id, email: u.email }.merge(reading_time(find_time(u))) }
  end

  private

  def reading_time(time)
    return {} unless time.present?

    {
      book_name: book_name(time),
      course_name: course_name(time),
      reading_time: time.count
    }
  end

  def book_name(time)
    time&.book&.name
  end

  def course_name(time)
    time&.book&.course&.name
  end

  def find_time(user)
    reading_time = ReadingTime.find_by(user_id: user.id)
    reading_time if reading_time.present?
  end
end
