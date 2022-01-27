class RegistrationsController < ApplicationController
  def create
    user = User.create!(username: params['user']['username'])
    if user
      session[:user_id] = user.id
      render json: user, status: :created
    else
      render json: status: 500
    end
  end
end
