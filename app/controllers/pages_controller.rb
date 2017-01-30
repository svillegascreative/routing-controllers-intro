class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "This is the welcome page!"
  end

  def about
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended."
    redirect_to "/welcome"
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_width = params[:width]
    requested_height = params[:height]
    @kitten_url = "http://lorempixel.com/#{requested_width}/#{requested_height}/cats"
  end

  def secrets
    if params[:magic_word] == "please"
      render :secrets
    else
      flash[:notice] = "Don't forget to say the magic word!"
      redirect_to "/welcome"
    end
  end

end
