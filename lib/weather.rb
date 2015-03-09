module Weather

  DEFAULT_CONDITION = ['stormy', 'sunny', 'sunny', 'sunny']

  def stormy?
    DEFAULT_CONDITION.sample == 'stormy'
  end

end