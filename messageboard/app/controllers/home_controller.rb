class HomeController < ApplicationController
  def index
    #Get data from the database
    #rearrange/process that data
    #make additional database calls
    #@Users = User.all
    @user_signed_in = user_signed_in?
  end
end
