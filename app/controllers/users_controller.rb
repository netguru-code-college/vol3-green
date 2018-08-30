class UsersController < ApplicationController
  before_action :authenticate_user!
  def create_allergic_prefs
  end

  def edit_allergic_prefs
  end

  def delete_allergic_prefs
  end

  def dashboard
    @user = current_user
    @current_food_request = @user.food_requests.
        where('created_at BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now).first
    @user_historic_food_requests = @user.food_requests.
        where('created_at  < ? ', DateTime.now.beginning_of_day)
  end
end
