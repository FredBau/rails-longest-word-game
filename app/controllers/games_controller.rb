class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    compare = params[:word].upcase.split('')

      compare.each {|x|
        if !params[:letters].include?(x)
         @error = "Typo issue"
        end
      }

  end
end





