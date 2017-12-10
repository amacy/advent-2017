require "pry"

class Day01
  def initialize(input)
    @numbers = input.split(//)
    @length = @numbers.length
    @sum = 0
  end

  def process
    @numbers.each_with_index do |n, index|
      @sum += n.to_i if _equals_next_number?(n, index)
    end
    @sum
  end

  def _equals_next_number?(n, index)
    if index == @length - 1
      n == @numbers[0]
    else
      n == @numbers[index + 1]
    end
  end
end
