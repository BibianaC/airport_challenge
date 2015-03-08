require 'plane'

require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

describe Plane do

  let(:plane) {Plane.new}
  let(:airport) {double :airport}

  context 'flying status' do

    it "should have a flying status when created" do
      expect(plane).to be_flying
    end

    it "should change status to flying after taking off" do
      plane.take_off!
      expect(plane).to be_flying
    end

  end

  context 'taking off and landing' do

    it "can land" do
      plane.land!
      expect(plane).not_to be_flying
    end

    it "can not land if it is not flying" do
      plane.land!
      expect{plane.land!}.to raise_error(RuntimeError, "You have already landed!")
    end

    it "should be able to land at an airport" do
      expect(airport).to receive(:receive).with(plane)
      plane.land_at(airport)
    end

    it "can take off" do
      plane.land!
      plane.take_off!
      expect(plane).to be_flying
    end

    # it "should be able to take off from an airport"
    #   plane.land!
    #   expect(airport).to receive(:release).with(plane)
    #   plane.take_off_from(airport)
    # end

  end

  context 'landing status' do

    it "should change status to landed after landing" do
      plane.land!
      expect(plane).not_to be_flying
    end

    it "should not be flying after landing at the airport" do
      allow(airport).to receive(:receive).with(plane)
      plane.land_at(airport)
      expect(plane).not_to be_flying      
    end

  end

end