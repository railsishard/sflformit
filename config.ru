# This file is used by Rack-based servers to start the application.

require 'carrierwave/orm/activerecord'
require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application
