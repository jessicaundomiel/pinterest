class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def edit_user
  	@user = User.find(params[:id])
  end
end
