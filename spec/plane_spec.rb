require 'plane'

describe Plane do

  let(:plane) {Plane.new}

  it "should have a flying status when created" do
    expect(plane).to be_flying
  end

  it "should have a flying status when in the air" do
    plane.in_air!
    expect(plane).to be_flying
  end

  it "can land" do
    expect(plane).to be_flying
    plane.land!
    expect(plane).not_to be_flying
  end

  it "should change status to landed after landing" do
    plane.land!
    expect(plane).to be_landed
  end

  it "can take off" do
    plane.land!
    expect(plane).to be_landed
    plane.take_off!
    expect(plane).not_to be_landed
  end

  it "should change status to flying after taking off" do
    plane.take_off!
    expect(plane).to be_flying
  end

end