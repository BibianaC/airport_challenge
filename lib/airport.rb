class Airport

  DEFAULT_CAPACITY = 20

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @planes = []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def plane_count()
    @planes.count
  end

  def receive(plane)
    raise "Airport is full" if full?
    @planes << plane
  end

  def release(plane)
    @planes.delete(plane)
  end

  def full?
    plane_count == capacity
  end

end