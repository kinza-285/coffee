# frozen_string_literal: true

# hamburger item class
class Hamburger
  class << self
    def price
      9.5
    end

    def tax
      20
    end

    def discount(product = '')
      0
    end
  end
end
