class CalculationsController < ApplicationController

def new_square
  end

  def square
    @number = params[:number].to_f
    @result = @number ** 2
  end

  def new_square_root
  end

  def square_root
    @number = params[:number].to_f
    @result = Math.sqrt(@number)
  end

  def new_random
  end

  def random
    @min = params[:min].to_f
    @max = params[:max].to_f
    @result = rand(@min..@max)
  end

  def new_payment
  end

  def payment
    @apr = params[:apr].to_f
    @monthly_rate = @apr / 100 / 12
    @years = params[:years].to_f
    @principal = params[:principal].to_f

    numerator = @monthly_rate * @principal
    denominator = 1 - (1 + @monthly_rate) ** -(@years * 12)

    @monthly_payment = (numerator / denominator).to_fs(:currency)
  end
end
