# frozen_string_literal: true

# coffee item class
class Coffee
  class << self
    def price
      3.5
    end

    def tax
      10
    end

    def discount(product = '')
      case product
      when 'cheeseburger'
        30
      when 'hamburger'
        20
      else
        0
      end
    end
  end
end
