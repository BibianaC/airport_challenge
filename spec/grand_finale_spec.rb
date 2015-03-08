require 'airport'
require 'plane'

require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

describe "The grand finale (last spec)" do

	let(:airport) {Airport.new(:capacity => 100)}
	plane = []
  6.times { plane << Plane.new }

  before(:each) do
    allow(airport).to receive(:stormy?) {false}
  end

  context 'taking off and landing' do

  	it 'should allow all planes to land' do
      expect(airport.plane_count).to eq(0)
      plane.each {|p| airport.receive(p)}
      expect(airport.plane_count).to eq(6)
    end

    it 'should allow all planes to take off' do
      plane.each {|p| airport.receive(p)}
      plane.each {|p| airport.release(p)}
      expect(airport.plane_count).to eq(0)
    end

  end

  context 'traffic control' do

    it "planes should take off when airport is full" do
      94.times {airport.receive(Plane.new)}
      plane.each {|p| airport.receive(p)}
      expect(airport.plane_count).to eq(100)
      expect(lambda {airport.receive(:plane)}).to raise_error(RuntimeError, 'Airport is full')
      plane.each {|p| airport.release(p)}
      expect(airport.plane_count).to eq(94)
    end

  end

end