class Solver
  def factorial(number)
    return 1 if number == 0
    if number.is_a?(Integer)
      raise('Invalid number entered') unless number >= 0
    else
      raise('just numbers for this method')
    end
  end
end