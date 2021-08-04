# frozen_string_literal: true

require 'active_support/core_ext/string'
# require all models files
Dir.glob('app/models/*.rb').each { |file| require_relative "../../#{file}" }

# count order service class
class CountOrderService

  def initialize(order)
    @order = order
  end

  attr_accessor :order

  # count order sum
  def count
    order.map { |item| count_item(item) }.inject(0, :+).round(2)
  end

  # count order sum fot item
  def count_item(item)
    # model class for item
    model = item[0].capitalize.constantize
    price = model.price
    amount = item[1]
    price * amount * tax_coefficient(model) * discount_coefficient(model)
  end

  # count discount fot item
  def discount(model)
    order.map { |e| model.discount(e[0]) }.max
  end

  # count tax coefficient fot item
  def tax_coefficient(model)
    1 + model.tax / 100.0
  end

  # count discount coefficient fot item
  def discount_coefficient(model)
    1 - discount(model) / 100.0
  end
end
