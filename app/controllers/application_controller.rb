class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_role


  def set_current_role
    @rol_usuario = User.first.try(:rol)
  end
end
