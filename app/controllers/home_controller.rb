class HomeController < ApplicationController

  def index
  end

  def connections
    count = R4S::SSES['stream'].keys.count
    render :json => {:connections=>count}
  end

  def push
    R4S.push_data('stream',{:time=>Time.now},:event=>"refresh")
    render :json => {:success=>true}
  end

end
