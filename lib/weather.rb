module Weather

  DEFAULT_CONDITION = ['stormy', 'sunny', 'sunny', 'sunny']

  def current_weather
    @current_weather = DEFAULT_CONDITION.sample
  end

  def sunny!
    @current_weather = 'sunny'
  end

  def sunny?
    @current_weather == 'sunny'
  end

  def stormy!
    @current_weather = 'stormy'
  end

  def stormy?
    @current_weather == 'stormy'
  end

end