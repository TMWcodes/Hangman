require 'calc'

describe 'calc' do
 
    it 'adds numbers together' do
        calc = Calculator.new
        answer = calc.calculate(5,'+',2)
       expect(answer).to eq(7.0)
    end
    it 'subtracts numbers' do
        calc = Calculator.new
        answer = calc.calculate(5,'-',2)
       expect(answer).to eq(3.0)
    end
    it 'multiplies numbers' do
        calc = Calculator.new
        answer = calc.calculate(5,'*',2)
       expect(answer).to eq(10.0)
    end
    it 'divides numbers' do
        calc = Calculator.new
        answer = calc.calculate(6,'/',2)
       expect(answer).to eq(3.0)
    end
end
