require 'plane'

describe Plane do

  let(:plane) {Plane.new}
  let(:airport) {double :airport}

  context 'flying status' do

    it "should have a flying status when created" do
      expect(plane).to be_flying
    end

    it "should have a flying status when in the air" do
      plane.in_air!
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

    it "can take off" do
      plane.land!
      plane.take_off!
      expect(plane).not_to be_landed
    end

  end

  context 'landing status' do

    it "should change status to landed after landing" do
      plane.land!
      expect(plane).to be_landed
    end

    it "should have a landed status when in the airport" do
      expect(airport).to receive(:receive_plane)
      plane.land_at!(airport)
      expect(plane).to be_landed
    end

  end

end