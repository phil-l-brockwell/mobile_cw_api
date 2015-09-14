# Application controller which all other controllers will inherit from
# Inherits from the base class which passes on all methods for routing, rendering, redirecting etc.
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
