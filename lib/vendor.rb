class Vendor

  attr_reader :name,
              :inventory
  def initialize(name)
    @name = name
    @inventory = Hash.new{ |hash, key| hash[key] = 0}
  end

  def check_stock(item)
    @inventory[item]
  end

  def stock(item, quantity)
    @inventory[item] += quantity
  end

  def potential_revenue
    #find quanitity of item
    #find price of item
    #multiply those together
    #add that number to an array
    #sum array
    revenue_array = []
    @inventory.each do |item|
      revenue_array << (item[0].price.to_f * item[1])
    end
    revenue_array.sum
  end

end
