require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    @input = params[:score]
    @letters = params[:letters]

    @a = open("https://wagon-dictionary.herokuapp.com/#{@input}")
    @b = @a.read
    @c = JSON.parse(@b)
  end
end
