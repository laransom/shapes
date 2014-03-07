require 'rspec'
require_relative '../lib/rectangle.rb'

describe Rectangle do
  let(:rectangle) {Rectangle.new(5, 7)}

  it 'has a valid height' do
    expect(rectangle.height.class).to eq(Fixnum)
    expect(rectangle.height).should > 0
  end

  it 'has a valid width' do
    expect(rectangle.width.class).to eq(Fixnum)
    expect(rectangle.width).should > 0
  end

  it 'calculates area properly' do
    expect(rectangle.area).to eq(35)
  end

  it 'calculates perimeter properly' do
    expect(rectangle.perimeter).to eq(24)
  end

end
