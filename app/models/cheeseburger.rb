# frozen_string_literal: true

# cheeseburger item class
class Cheeseburger
  class << self
    def price
      8.5
    end

    def tax
      15
    end

    def discount(product = '')
      0
    end
  end
end
