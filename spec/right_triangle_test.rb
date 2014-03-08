require 'rspec'
require_relative '../lib/right_triangle.rb'

describe RightTriangle do
  let(:right_triangle) {RightTriangle.new(5, 7.0)}
  let(:tolerance) {0.001}

  it 'has a valid height' do
    expect(right_triangle.height.class.ancestors.include? Numeric).to eq(true)
    expect(right_triangle.height).should > 0
  end

  it 'has a valid width' do
    expect(right_triangle.width.class.ancestors.include? Numeric).to eq(true)
    expect(right_triangle.width).should > 0
  end

  it 'calculates hypotenuse properly' do
    expect(right_triangle.hypotenuse).to be_within(tolerance).of(8.6023)
  end

  it 'calculates perimeter properly' do
    expect(right_triangle.perimeter).to be_within(tolerance).of(20.6023)
  end

  it 'calculates area properly' do
    expect(right_triangle.area).to eq(17.5)
  end

end
