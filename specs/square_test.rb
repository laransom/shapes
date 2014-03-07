require 'rspec'
require_relative '../lib/square.rb'

describe Square do
  let(:square) {Square.new(5)}

  it 'has a valid side length' do
    expect(square.side.class).to eq(Fixnum)
    expect(square.side).should > 0
  end

  it 'calculates area properly' do
    expect(square.area).to eq(25)
  end

  it 'calculates perimeter properly' do
    expect(square.perimeter).to eq(20)
  end

end
