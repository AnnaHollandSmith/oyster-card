require "station"

describe Station do

	subject(:station) {described_class.new("Oxford Street", 1)}
	
	it "knows which zone it is in" do 
		expect(station.zone).to eq(1)
	end 

	it "knows the name of the station" do
		expect(station.name).to eq("Oxford Street")
	end

end