class Solver
  def factorial(number)
    raise('just numbers for this method') unless number.is_a?(Integer)
    raise('Invalid number entered') unless number >= 0
    return 1 if number.zero?

    number * factorial(number - 1)
  end

  def reverse(string)
    raise('just strings for this method') unless string.is_a?(String)

    string.reverse
  end

  def fizzbuzz(number)
    raise('just numbers for this method') unless number.is_a?(Integer)
    return 'fizz' if (number % 3).zero?
  end
end
