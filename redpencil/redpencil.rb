=begin
Red Pencil Tests:
 Is the price reduced by at least 5%
 Is the price reduced below 30%
 Has the price been stable for 30 days
        If all are true, start red pencil promotion

  Has the duration of redpencil promotion lasted less then or equal 30 days?
        If true, red pencil is active
        if false, red pencil ends immediately or is not active

  If price discount changes:
       Is the price discount now negative (has the price increased)
           if true, red pencil ends immediately
       Is the price discount now >30%
          if true, red pencil ends immediately
=end

#WIll need a percent function, but that can wait

class Numeric
  def percent_of(n)
    self.to_f / n.to_f * 100.0
  end
end

class Item
  def initialize(original_price, current_price, price_stability)
    @original_price = original_price
    @current_price = current_price
    @price_stability = price_stability
  end

  def verbal_check
    puts "#{Item.original_price}"
    puts "#{Item.current_price}"
    puts "#{Item.price_stability}"
  end

  def sale_percentage(current_price)
    (current_price).percent_of(original_price)
  end


end

apple = Item.new(5.00, 2.25, 20)
puts apple.inspect
puts apple.original_price
