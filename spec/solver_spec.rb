require './solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe '#new' do
    it 'Returns a new Solver object' do
      expect(@solver).to be_an_instance_of Solver
    end
  end

  describe 'factorial method' do
    it 'Only acepts integers >= 0' do
      expect { @solver.factorial(-5) }.to raise_error(RuntimeError)
    end

    it 'Only acepts integers' do
      expect { @solver.factorial('f') }.to raise_error(RuntimeError)
    end

    it 'special case - factorial of 0 is 1' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'sReturn the factorial of the number added' do
      expect(@solver.factorial(4)).to eq(24)
    end
  end

  describe 'reverse method' do
    it 'Only acepts strings' do
      expect { @solver.reverse(55) }.to raise_error(RuntimeError)
    end

    it 'reverse a word' do
      expect(@solver.reverse('string')).to eq('gnirts')
    end
  end

  describe 'fizzbuzz method' do
    it 'Only acepts integers' do
      expect { @solver.fizzbuzz('test') }.to raise_error(RuntimeError)
    end

    it 'Returns fizz when the number is divisible by 3' do
      expect(@solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'Returns buzz when the number is divisible by 5' do
      expect(@solver.fizzbuzz(25)).to eq('buzz')
    end
  end
end
