# frozen_string_literal: true

# coffee item tests
require_relative "../../app/models/coffee"

describe Coffee do
  it "price is correct" do
    expect(Coffee.price).to eq(3.5)
  end

  it "tax is correct" do
    expect(Coffee.tax).to eq(10)
  end
end
