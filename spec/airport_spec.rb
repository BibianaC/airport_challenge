require 'airport'

describe Airport do
	
  let(:airport) {Airport.new(:capacity => 100)}
  let(:plane) {double :plane}

  it "should allow planes to land" do
    expect(airport.plane_count).to eq(0)
    airport.receive(plane)
    expect(airport.plane_count).to eq(1)
  end

  it "should allow planes to take off" do
    airport.receive(plane)
    airport.release(plane)
    expect(airport.plane_count).to eq(0)
  end

  it "should not allow planes to land when it is full" do
    100.times {airport.receive(:plane)}
    expect(airport).to be_full
    expect(lambda {airport.receive(:plane)}).to raise_error(RuntimeError, "Airport is full")
  end

end