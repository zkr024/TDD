class Solver
  def factorial(number)
    raise('just numbers for this method') unless number.is_a?(Integer)
    raise('Invalid number entered') unless number >= 0
    return 1 if number.zero?
  end
end
