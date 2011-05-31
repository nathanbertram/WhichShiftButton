class PressShiftController < ApplicationController
  def index
    @cookie = cookies[:pressed]
  end
  
  def press
    if params[:button] == "left"
      $redis.incr('left_count')
    elsif params[:button] == "right"
      $redis.incr('right_count')
    end
    cookies.permanent[:pressed] = params[:button]
    redirect_to root_path
  end
end
