class UsersController < ApplicationController
  def index
    users = User.students
    @users = UserPresenter.new(users).user_data
  end
end
