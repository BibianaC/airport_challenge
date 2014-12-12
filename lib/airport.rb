class Airport

  DEFAULT_CAPACITY = 20

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @planes = []
  end

  def plane_count()
    @planes.count
  end

  def receive(plane)
    @planes << plane
  end

  def release(plane)
    @planes.delete(plane)
  end

end