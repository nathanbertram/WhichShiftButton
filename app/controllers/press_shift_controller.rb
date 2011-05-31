class PressShiftController < ApplicationController
  def index
    @cookie = cookies[:pressed]
  end
  
  def press
    if cookies[:pressed].present?
      # DO NOTHING!!!
    elsif params[:button] == 'left'
      REDIS.incr('left_count')
    elsif params[:button] == 'both'
      REDIS.incr('both_count')
    elsif params[:button] == 'right'
      REDIS.incr('right_count')
    end
    cookies.permanent[:pressed] = params[:button]
    redirect_to root_path
  end
end
