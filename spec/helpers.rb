module Helpers

 def assert_words_length(combinations)
  combinations.each do |combination|
   if combination.is_a? Array
    combination.each { |word| expect(word.size).to be >=  3}
   else
    expect(combination.size).to be >=  3
   end  
  end  
 end
end