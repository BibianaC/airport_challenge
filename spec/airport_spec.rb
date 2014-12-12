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

end