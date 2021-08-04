# frozen_string_literal: true

# CountOrderService tests
require_relative '../../app/services/count_order_service'
require_relative '../../app/models/tee'

describe CountOrderService do

  before(:all) do
    @order = { 'tee' => 1, 'coffee' => 2 }
    @cheeseburger_order = { 'tee' => 1, 'coffee' => 2, 'cheeseburger'=> 1 }
    @service = CountOrderService.new(@order)
    @cheeseburger_service = CountOrderService.new(@cheeseburger_order)
    @model = Tee
    @item = 'tee'
  end

  it 'count correctly' do
    expect(@service.count).to eq(9.04)
  end

  it 'count correctly' do
    expect(@cheeseburger_service.count).to eq(15.17)
  end

  it 'count item correctly' do
    expect(@service.count_item(@order.first)).to eq(1.3440000000000003)
  end

  it 'discount correct' do
    expect(@service.discount(@item)).to eq(20)
  end

  it 'discount cheeseburger correct' do
    expect(@cheeseburger_service.discount(@item)).to eq(100)
  end

  it 'tax_coefficient correct' do
    expect(@service.tax_coefficient(@model)).to eq(1.12)
  end

  it 'discount_coefficient correct' do
    expect(@service.discount_coefficient(@item)).to eq(0.8)
  end
end
