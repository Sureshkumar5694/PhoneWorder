require_relative 'word_helper'

# When the program starts, the dictionary will get initialized.
# Each words in the dictionay will be mapped with the corresponding number combination,
# for example {"223" => ["abc", "acb", "bca", "bac", "cba", "cab"]}
# this will avoid calculating words combinations every time.

class PhoneDictionary

  def initialize
    @map = {}
    read_dictionary_file
  end

  def find_words(number)
    @map[number] || []
  end

  private

  def read_dictionary_file
    File.open('resource/dictionary.txt').each do |word|
      word = word.gsub("\n", "").downcase
      number = WordHelper.word_to_number(word)
      @map[number] = [] unless @map[number]
      @map[number] << word
    end     
  end
end

