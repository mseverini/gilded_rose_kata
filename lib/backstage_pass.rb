require 'default_item'
class BackstagePass < DefaultItem
  def direction
    '+'
  end

  def rate
    case @item.sell_in
    when 10...Float::INFINITY
      1
    when 5...10
      2
    when 0...5
      3
    else
      @item.quality * -1
    end
  end

  def update_quality
    change_quality(rate, direction)
  end
end
