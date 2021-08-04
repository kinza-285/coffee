# frozen_string_literal: true

# tee item class
class Tee
  class << self
    def price
      1.5
    end

    def tax
      12
    end

    def discount(product = '')
      case product
      when 'cheeseburger'
        100
      when 'hamburger'
        40
      when 'coffee'
        20
      else
        0
      end
    end
  end
end
