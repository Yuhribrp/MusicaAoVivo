require 'calculator'

describe Calculator do
  it 'use sum method for 2 numbers' do
    calc = Calculator.new
    result = calc.sum(3, 7)
    expect(result).to eq(10)
  end
end
