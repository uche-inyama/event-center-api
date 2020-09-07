# frozen_string_literal: true

class SessionsController < ApplicationController
  def create
    user = User
    find_by(username: params['user']['username'])
    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        current_user: user
      }
    else
      render json: { status: 401 }
    end
  end

  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        current_user: @current_user
      }
    else
      render json: {
        logged_in: false
      }
    end
  end

  def logout
    reset_session
    render json: { status: 200, logged_out: true }
  end
end
