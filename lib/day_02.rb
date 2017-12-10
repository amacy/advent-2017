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
    @rows.inject(0) do |sum, row|
      divisors = _divisors(row)
      sum += divisors.max / divisors.min
    end
  end

  def _divisors(row)
    row.each do |n_1|
      row.each do |n_2|
        next if n_1 == n_2
        return [n_1, n_2] if n_1 % n_2 == 0 || n_2 % n_1 == 0
      end
    end
  end
end
