class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def fallback_index_html
    puts "I'm here"
    render :file => '/client/public/index.html'
  end
end
