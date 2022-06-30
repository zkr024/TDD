class Solver
  def factorial(number)
    raise('just numbers for this method') unless number.is_a?(Integer)
    raise('Invalid number entered') unless number >= 0
    return 1 if number.zero?

    number * factorial(number - 1)
  end

  def reverse(string)
    raise('just strings for this method') unless string.is_a?(String)
  end
end
