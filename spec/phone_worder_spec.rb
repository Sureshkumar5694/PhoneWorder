require_relative './helpers'

RSpec.configure do |c|
  c.include Helpers
end

RSpec.describe PhoneWorder do

  let(:phone_worder) { PhoneWorder.new }

  context "when the input is valid" do

    context "and if there are combinations present for a given number" do

      it "should return array of combinations" do

        combinations = phone_worder.convert("6686787825")
        expect(combinations).to include(["motor", "usual"], ["noun", "struck"], ["nouns", "truck"], ["nouns", "usual"], ["onto", "struck"], "motortruck")      
        expect(combinations).not_to include(["mo" "torusual"], "")
        expect(combinations.count).to eq(44)
        assert_words_length(combinations)
        expect(combinations).to match_array([["mot", "opt", "puck"], ["mot", "opt", "ruck"], ["mot", "opt", "suck"], 
          ["mot", "ort", "puck"], ["mot", "ort", "ruck"], ["mot", "ort", "suck"], 
          ["mot", "opts", "taj"], ["mot", "opus", "taj"], ["mot", "orts", "taj"], 
          ["not", "opt", "puck"], ["not", "opt", "ruck"], ["not", "opt", "suck"], 
          ["not", "ort", "puck"], ["not", "ort", "ruck"], ["not", "ort", "suck"], 
          ["not", "opts", "taj"], ["not", "opus", "taj"], ["not", "orts", "taj"], 
          ["oot", "opt", "puck"], ["oot", "opt", "ruck"], ["oot", "opt", "suck"], 
          ["oot", "ort", "puck"], ["oot", "ort", "ruck"], ["oot", "ort", "suck"], 
          ["oot", "opts", "taj"], ["oot", "opus", "taj"], ["oot", "orts", "taj"], 
          ["noun", "pup", "taj"], ["noun", "pur", "taj"], ["noun", "pus", "taj"], 
          ["noun", "sup", "taj"], ["noun", "suq", "taj"], ["noun", "struck"], 
          ["onto", "pup", "taj"], ["onto", "pur", "taj"], ["onto", "pus", "taj"], 
          ["onto", "sup", "taj"], ["onto", "suq", "taj"], ["onto", "struck"], ["motor", "truck"], 
          ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], "motortruck"])


        combinations = phone_worder.convert("2282668687")
        expect(combinations).to include(["act", "amounts"], ["act", "contour"], ["acta", "mounts"], ["bat", "amounts"], ["bat", "contour"], ["cat", "contour"], "catamounts")      
        expect(combinations).not_to include(["acta" "mounts"], "act")      
        expect(combinations.count).to eq(53)
        assert_words_length(combinations)
        expect(combinations).to match_array([["act", "boo", "tots"], ["act", "boo", "tour"], ["act", "con", "tots"], 
          ["act", "con", "tour"], ["act", "coo", "tots"], ["act", "coo", "tour"], 
          ["act", "boot", "mus"], ["act", "boot", "nus"], ["act", "boot", "our"], 
          ["act", "coot", "mus"], ["act", "coot", "nus"], ["act", "coot", "our"], 
          ["act", "amounts"], ["act", "contour"], ["bat", "boo", "tots"], ["bat", "boo", "tour"], 
          ["bat", "con", "tots"], ["bat", "con", "tour"], ["bat", "coo", "tots"], ["bat", "coo", "tour"],
          ["bat", "boot", "mus"], ["bat", "boot", "nus"], ["bat", "boot", "our"], ["bat", "coot", "mus"], 
          ["bat", "coot", "nus"], ["bat", "coot", "our"], ["bat", "amounts"], ["bat", "contour"], 
          ["cat", "boo", "tots"], ["cat", "boo", "tour"], ["cat", "con", "tots"], ["cat", "con", "tour"],
          ["cat", "coo", "tots"], ["cat", "coo", "tour"], ["cat", "boot", "mus"], ["cat", "boot", "nus"], 
          ["cat", "boot", "our"], ["cat", "coot", "mus"], ["cat", "coot", "nus"], ["cat", "coot", "our"],
          ["cat", "amounts"], ["cat", "contour"], ["acta", "mot", "mus"], ["acta", "mot", "nus"], 
          ["acta", "mot", "our"], ["acta", "not", "mus"], ["acta", "not", "nus"], ["acta", "not", "our"],
          ["acta", "oot", "mus"], ["acta", "oot", "nus"], ["acta", "oot", "our"], ["acta", "mounts"], "catamounts"])
      end  
    end

    context "and if there are no combinations present for a given number" do

      it("should return empty array") do
       
        combinations = phone_worder.convert("9999999999")
        expect(combinations.count).to eq(0)
      end
    end 
  end 


  context "when the input is invalid" do

    it "should raise the error" do
      
      expect { phone_worder.convert("8w37825") }.to raise_error(RuntimeError, "InValid Input")
      expect { phone_worder.convert("3456789345678") }.to raise_error(RuntimeError, "InValid Input")
      expect { phone_worder.convert("") }.to raise_error(RuntimeError, "InValid Input")
    end  
  end 
end
