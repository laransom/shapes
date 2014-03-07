require 'rspec'
require_relative '../lib/circle.rb'

describe Circle do
  let(:circle) {Circle.new(5)}
  let(:tolerance) {0.001}

  it 'has a valid radius' do
    expect(circle.radius.class).to eq(Fixnum)
    expect(circle.radius).should > 0
  end

  it 'calculates diameter properly' do
    expect(circle.diameter).to eq(10)
  end

  it 'calculates circumference properly' do
    expect(circle.circumference).to be_within(tolerance).of(31.4159)
  end

  it 'calculates area properly' do
    expect(circle.area).to be_within(tolerance).of(78.5397)
  end

end
