require 'default_item'
require 'aged_brie'
require 'sulfuras'
require 'backstage_pass'
require 'conjured'

def update_quality(items)
  items.each do |item|
    case item.name
    when 'Aged Brie'
      current_item = AgedBrie.new(item)
    when /Sulfuras/
      current_item = Sulfuras.new(item)
    when /Backstage/
      current_item = BackstagePass.new(item)
    when /Conjured/
      current_item = Conjured.new(item)
    else
      current_item = DefaultItem.new(item)
    end
    current_item.tick
  end
end

#----------------------------
# DO NOT CHANGE THINGS BELOW
#----------------------------

Item = Struct.new(:name, :sell_in, :quality)
