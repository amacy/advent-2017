class Day02
  def initialize(input)
    @rows = input.split("\n").map { |r| r.split(/ /).map(&:to_i) }
  end

  def part_1
    @rows.inject(0) do |sum, row|
      sum += row.max - row.min
    end
  end

  def part_2
  end
end
