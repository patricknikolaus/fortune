class MyExamplesController < ApplicationController
  def random_fortune
    fortunes = ["not likely", "ask again later", "absolutely"]
    rand_fortune = fortunes.sample
    render json: {fortune: rand_fortune}
  end

  def lotto_numbers
    lotto_draw = []
    6.times do
      lotto_draw << rand(1..60)
    end
    render json: {numbers: lotto_draw }
  end

  def beer_bottles
    lyrics = []
    bottles = 99
    99.times do
      lyrics << "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer"
      bottles -= 1
      lyrics << "Take one down and pass it around, #{bottles} bottles of beer on the wall" 
    end
    lyrics << "No more bottles of beer on the wall, no more bottles of beer
    Go to the store and buy some more, 99 bottles of beer on the wall"
    render json: {lyrics: lyrics}
  end

end
