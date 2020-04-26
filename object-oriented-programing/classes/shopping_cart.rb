#
#  Ruby Basic Object-Oriented Programming - Class Methods
#
#  created by @llarruda
#  Mon 25 Apr 2020 09:31:51 PM -03
#
#

class ShoppingCart
  attr_accessor :product_quantity, :total_price

  def initialize(product_quantity=0, total_price=0.0)
    @product_quantity = product_quantity
    @total_price = total_price
  end

  def self.sale_out
    if @total_price == true
      @total_price = @total_price.to_f - 0.9
    end
  end
end
