class PagesController < ApplicationController

  def welcome
    @header = "This is the welcome page!"
  end

  def about
  end

  def contest

  end

  def kitten
    requested_width = params[:width]
    requested_height = params[:height]
    @kitten_url = "http://lorempixel.com/#{requested_width}/#{requested_height}/cats"
  end

end
