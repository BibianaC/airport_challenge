require 'airport'

describe Airport do
	
  let(:airport) {Airport.new(:capacity => 100)}
  let(:plane) {double :plane}
  let(:weather) {double :weather}

  context 'taking off and landing' do

    it "should allow planes to land" do
      expect(airport.plane_count).to eq(0)
      allow(airport).to receive(:stormy?) {false}
      airport.receive(plane)
      expect(airport.plane_count).to eq(1)
    end

    it "should allow planes to take off" do
      allow(airport).to receive(:stormy?) {false}
      airport.receive(plane)
      airport.release(plane)
      expect(airport.plane_count).to eq(0)
    end

  end

  context 'traffic control' do

    it "should not allow planes to land when it is full" do
      allow(airport).to receive(:stormy?) {false}
      airport.capacity.times {airport.receive(:plane)}
      expect(airport).to be_full
      expect(lambda {airport.receive(:plane)}).to raise_error(RuntimeError, 'Airport is full')
    end

  end

  context 'weather conditions' do

    it "should not allow planes to land when it is stormy" do
      allow(airport).to receive(:stormy?) {true}
      expect(lambda {airport.receive(:plane)}).to raise_error('You cannot land, it is too stormy')
    end

    it "should not allow planes to take off when it is stormy" do
      allow(airport).to receive(:stormy?) {true}
      expect(lambda {airport.release(:plane)}).to raise_error('You cannot take off, it is too stormy')
    end

  end

end