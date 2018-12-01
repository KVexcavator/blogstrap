class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  add_flash_types :success, :danger, :primary, :secondary, :warning, :info, :light, :dark
end
