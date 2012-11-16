class SseController < ApplicationController
  include ActionController::Live
  def stream
    R4S.add_stream(response,session,"stream").start
  end
end
