class DefaultItem
  def initialize(item)
    @item = item
  end

  def tick
    update_sell_in
    update_quality
  end

  private

  def set_quality(q)
    @item.quality = [0,q,50].sort[1]
  end

  def update_sell_in
    @item.sell_in = @item.sell_in - 1
  end

  def update_quality
    change_quality(rate, direction)
  end

  def rate
    @item.sell_in <= 0 ? 2 : 1
  end

  def direction
    '-'
  end

  def change_quality(by, direction)
    set_quality(@item.quality.send direction, by )
  end
end
