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
end
