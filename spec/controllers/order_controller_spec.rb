# frozen_string_literal: true

# OrderController tests
require_relative '../../app/controllers/order_controller'
require 'json'

describe OrderController do
  it 'count correctly' do
    order = { "tee": 1, "coffee": 2 }.to_json
    expect(OrderController.new(order).sum).to eq('9.04')
  end

  it 'initialize without price not correctly' do
    order = { "tee": 1, "beer": 2 }.to_json
    expect(OrderController.new(order).sum).to eq("\"uninitialized constant Beer\"")
  end


end
