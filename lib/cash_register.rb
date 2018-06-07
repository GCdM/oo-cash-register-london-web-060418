require 'pry'

class CashRegister
  attr_accessor :total
  attr_reader :discount
  
  def initialize(emp_discount=0.0)
    @total = 0.0
    @discount = emp_discount
    ITEMS = []
  end
  
  def add_item(item, price, quantity=1)
    @total += price * quantity
    quantity.times do
      ITEMS << item
    end
  end
  
  def apply_discount
    if @discount > 0
      @total *= ((100.0 - @discount) / 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    ITEMS
  end
end
