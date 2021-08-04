# frozen_string_literal: true

# tee item tests
require_relative '../../app/models/tee'

describe Tee do
  it 'price is correct' do
    expect(Tee.price).to eq(1.5)
  end

  it 'tax is correct' do
    expect(Tee.tax).to eq(12)
  end

  it 'discount is correct' do
    expect(Tee.discount).to eq(0)
  end

  it 'discount for coffee is correct' do
    expect(Tee.discount('coffee')).to eq(20)
  end
end
