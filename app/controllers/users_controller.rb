class UsersController < ApplicationController
  def index
    @students_data = UserPresenter.new.user_data
  end
end
