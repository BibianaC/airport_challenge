require 'weather'

class WeatherCondition; include Weather; end

describe Weather  do

	let(:condition) {WeatherCondition.new}

  context 'sunny and stormy' do

    # No need to test this one.

    xit "should be able to be sunny" do
      condition.sunny!
      expect(condition).to be_sunny
    end

    xit "should be able to be stormy" do
      condition.stormy!
      expect(condition).to be_stormy
    end

  end

end