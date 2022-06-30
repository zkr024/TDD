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
  end
end
