class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!, :except => [:about, :home] 
  # before_action :set_global_nsfw

  # def set_global_nsfw
  # 	@global_show_nsfw = current_user.show_nsfw?
  # end
end
