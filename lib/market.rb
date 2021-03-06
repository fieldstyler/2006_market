class Market

  attr_reader :name,
              :vendors
  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    vendors_with_items = []
    @vendors.each do |vendor|
      if vendor.inventory.include?(item)
        vendors_with_items << vendor
      end
    end
    vendors_with_items
  end

  def total_inventory
    complete_inventory = Hash.new
    @vendors.each do |vendor|
      complete_inventory[vendor.inventory.keys[0]] = {
                                                      quantity: vendor.inventory.values[0],
                                                      vendors: []
                                                      }
    end
    complete_inventory
  end
end
