class Plane

  def initialize
    take_off!
  end

  def flying?
    @flying
  end

  def land!
    raise "You have already landed!" unless flying?
    @flying = false
  end

  def take_off!
    @flying = true
  end

  def land_at(airport)
    airport.receive(self)
    land!
  end

end