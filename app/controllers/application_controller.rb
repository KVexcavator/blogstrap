class ApplicationController < ActionController::Base
  add_flash_types :success, :danger, :primary, :secondary, :warning, :info, :light, :dark
end
