require_relative 'weather'

class Airport

  DEFAULT_CAPACITY = 20

  include Weather

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
    raise 'Airport is full' if full?
    raise 'You cannot land, it is too stormy' if stormy?
    @planes << plane
  end

  def release(plane)
    raise 'You cannot take off, it is too stormy' if stormy?
    @planes.delete(plane)
  end

  def full?
    plane_count == capacity
  end

end