require "pry"

class CashRegister
  attr_accessor :total, :discount, :item_array, :last_transaction

  def initialize(discount = 0)
    self.item_array = []
    @total = 0
    @discount = discount
  end

  def add_item(item_title, price, quantity = 1)
    counter = 0
    while counter < quantity do
      self.item_array << item_title
      counter += 1
    end
    @last_transaction = price * quantity
    @total += price * quantity
  end

  def apply_discount
    @total -= @total * discount / 100
    discount > 0 ? "After the discount, the total comes to $#{@total}." : "There is no discount to apply."
  end

  def items
    self.item_array
  end

  def void_last_transaction
    @total -= @last_transaction
  end

  @total
end
