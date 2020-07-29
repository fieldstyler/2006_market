class Item

  attr_reader :name,
              :price
  def initialize(item_info)
    @name = item_info[:name]
    @price = item_info[:price][1..4]
  end

end
