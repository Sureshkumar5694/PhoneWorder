RSpec.describe PhoneWorder do

	context "when the input is valid" do
		
		it "should return the combination" do
    	combinations = PhoneWorder.new.convert("6686787825")
    	expect(combinations).to include(["motor", "usual"], ["noun", "struck"], ["nouns", "truck"], ["nouns", "usual"], ["onto", "struck"], "motortruck")    	
    	expect(combinations).not_to include(["mo" "torusual"], "")
    	expect(combinations.count).to eq(44)

    	combinations = PhoneWorder.new.convert("2282668687")
    	expect(combinations).to include(["act", "amounts"], ["act", "contour"], ["acta", "mounts"], ["bat", "amounts"], ["bat", "contour"], ["cat", "contour"], "catamounts")    	
    	expect(combinations).not_to include(["acta" "mounts"], "act")    	
    	expect(combinations.count).to eq(53)
  	end
	end	

	context "when the input is invalid" do

		it "should raise the error" do
			expect { PhoneWorder.new.convert("8w37825") }.to raise_error(RuntimeError, "InValid Input")
		end	
	end 
end
