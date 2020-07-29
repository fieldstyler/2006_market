require "minitest/autorun"
require "minitest/pride"
require "./lib/vendor"
require "./lib/item"

class ItemTest < Minitest::Test

  def test_it_exists
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})
    assert_instance_of Item, item1
    assert_instance_of Item, item2

  end

  #def test_it_has_attributes
  #end

end
