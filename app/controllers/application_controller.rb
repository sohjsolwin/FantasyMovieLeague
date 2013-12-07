class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :is_active
  helper_method :connect
  
  def is_active(a)
	if request.env['PATH_INFO'] == a
		return "class=\"is_active\"".html_safe
	else
		return ""
	end
  end

  def connect
	return Mysql2::Client.new(Rails.configuration.database_configuration["development"])
  end
  
end