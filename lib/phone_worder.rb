require_relative 'phone_dictionary'
require_relative 'validator'
require_relative 'config'

class PhoneWorder

  def initialize    
    @phone_dict = PhoneDictionary.new
  end

  def convert(number)   
    Validator.validate(number)
    find_words_combinations(number)
  end

  private

  def split_number(number, length)
    [number[0...length], number[length..-1]]
  end   
  

  def find_words_combinations(number) 
    words_list =[]  
    
    if (number.size <= Config::MIN_WORD_LENGTH)
      return (number.size == Config::MIN_WORD_LENGTH) ? @phone_dict.find_words(number) : []
    end 
    
    (Config::MIN_WORD_LENGTH..number.size).each do |length| 
      top, bottom = split_number(number, length)    
      top_words = @phone_dict.find_words(top)     
      next if top_words.empty?
      bottom_words = find_words_combinations(bottom)
      next if bottom_words.empty?
      words_flatten = top_words.product(bottom_words).map(&:flatten)
      words_list.concat(words_flatten)      
    end

    full_words = @phone_dict.find_words(number)
    words_list.concat(full_words)
  end   
end
