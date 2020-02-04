class House

  attr_reader :price, :address, :rooms, :details

  def initialize(price, address)
    @price = price.gsub("$", "").to_i
    @address = address
    @rooms = []
    @details = {
      "price" => @price,
      "address" => @address
    }
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    @price > 500000 ? true : false
  end

  def rooms_from_category(category)
    @rooms.select do |room|
      room.category == category
    end
  end

  def area
    @rooms.sum do |room|
      room.area
    end
  end

  def price_per_square_foot
    (@price.to_f / area).round(2)
  end
end
