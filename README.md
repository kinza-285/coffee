# README

Coffee shop

**To run**
execute commands
irb
require './app/controllers/order_controller'
order = "{\"tee\":1,\"coffee\":2}" #It is JSON for order
OrderController.new(order).sum

**Models**
Now there are 4 models in ./models directory
cheeseburger
coffee
hamburger
tee

**Add models**
Add a ruby file to ./models directory in format:

class Coffee
  class << self
    def price
      3.5
    end

    def tax
      10
    end
  end
end

Modify public/discounts.yml

**Run tests**
rspec ./spec
