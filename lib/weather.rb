module Weather

  DEFAULT_CONDITION = ['stormy', 'sunny', 'sunny', 'sunny']

  # No need to use all these methods as I am not using them anywhere else

  # def current_weather
  #   @current_weather = DEFAULT_CONDITION.sample
  # end

  # def sunny!
  #   @current_weather = 'sunny'
  # end

  # def sunny?
  #   @current_weather == 'sunny'
  # end

  # def stormy!
  #   @current_weather = 'stormy'
  # end

  def stormy?
    DEFAULT_CONDITION.sample == 'stormy'
  end

end