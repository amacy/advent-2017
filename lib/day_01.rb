require "pry"

class Day01
  def initialize(input)
    @numbers = input.split(//)
    @length = @numbers.length
    @sum = 0
  end

  def part_1(steps=1)
    @numbers.each_with_index do |n, index|
      @sum += n.to_i if _equals_character_steps_ahead?(n, index, steps)
    end
    @sum
  end

  def part_2
    steps = @length / 2
    part_1(steps)
  end

  def _equals_character_steps_ahead?(n, index, steps)
    location = steps + index
    if location >= @length
      calculated_index = @length - location
      n == @numbers[calculated_index.abs]
    else
      n == @numbers[location]
    end
  end
end
