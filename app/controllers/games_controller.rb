class GamesController < ApplicationController
  def new
    @letters = []
    (1..10).to_a.each { @letters << ("a".."z").to_a.sample.upcase }
  end

  def score
    @word = params[:word]
    @letters = params[:letters].split(' ')
  end
end