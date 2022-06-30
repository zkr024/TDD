require './solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe '#new' do
    it 'Returns a new Solver object' do
      expect(@solver).to be_an_instance_of Solver
    end

    it 'Only acepts integers >= 0' do
      expect { @solver.factorial(-5) }.to raise_error(RuntimeError)
    end

    it 'Only acepts integers' do
      expect { @solver.factorial('f') }.to raise_error(RuntimeError)
    end
  end
end
