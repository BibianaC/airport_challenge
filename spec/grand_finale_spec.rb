require 'airport'
require 'plane'

describe "The grand finale (last spec)" do

	let(:airport) {Airport.new(:capacity => 100)}
	let(:plane) {double :plane}

  context 'taking off and landing' do

  	it 'all planes can land' do
      expect(airport.plane_count).to eq(0)
      allow(airport).to receive(:stormy?) {false}
      6.times {airport.receive(plane)}
      expect(airport.plane_count).to eq(6)
    end

    it 'all planes can take off' do
      allow(airport).to receive(:stormy?) {false}
      6.times {airport.receive(plane)}
      6.times {airport.release(plane)}
      expect(airport.plane_count).to eq(0)
    end

  end

end