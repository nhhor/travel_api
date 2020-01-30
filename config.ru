# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'


# EH?????????? below...
require ('./app')


run Rails.application
