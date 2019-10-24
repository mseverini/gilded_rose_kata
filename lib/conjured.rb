require 'default_item'
class Conjured < DefaultItem
  def rate
    @item.sell_in <= 0 ? 4 : 2
  end
end
