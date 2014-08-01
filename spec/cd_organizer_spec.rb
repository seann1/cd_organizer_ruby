require 'rspec'
require 'cd_organizer'

describe Cd_organizer do

  before do
    Cd_organizer.clear
  end

  it "is initialized with an album name and an artist name" do
    test_cd = Cd_organizer.new('Ride the lightning', 'Metalica')
    expect(test_cd).to be_an_instance_of Cd_organizer
  end

   it "adds a new cd with artist and album and pushes it to the all cds array" do
    test_cd = Cd_organizer.new('Ride the lightning', 'Metalica')
    test_cd.add_cd
    expect(Cd_organizer.display_cds.length).to eq 1
  end

    it "returns a list of all cds" do
      test_cd = Cd_organizer.new('Ride the lightning', 'Metalica')
      test_cd.add_cd
      expect(Cd_organizer.display_cds).to eq Cd_organizer.display_cds
    end
end

# why is it returning artist first and then album
