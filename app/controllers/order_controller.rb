require 'json'
# require all models files
Dir.glob('app/models/*.rb').each { |file| require_relative "../../#{file}" }
require 'active_support/core_ext/string'
require_relative '../services/count_order_service'

# frozen_string_literal: true

# order controller class
class OrderController
  def initialize(params)
    @order = JSON.parse(params)
  end

  attr_accessor :order

  # sum of order
  def sum
    check_order
    CountOrderService.new(order).count.to_json
  rescue StandardError => e
    e.message.to_json
  end

  private

  # check if prices for order exist
  def check_order
    order.each { |e| e[0].capitalize.constantize.price }
  end
end
