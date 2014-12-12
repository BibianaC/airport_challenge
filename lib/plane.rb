class Plane

  def initialize
    in_air!()
  end

  def flying?
    @fly
  end

  def in_air!
    @fly = true
  end

  def land!
    @fly = false
  end

  def landed?
    !@fly
  end


end