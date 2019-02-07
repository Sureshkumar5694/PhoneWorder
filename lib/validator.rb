# Input should be 10 digits. Should only contain digits between 2 to 9.
# except 2 to 9, no other characters are allowed.

module Validator

  def self.validate(input)
    valid = input.match?('^[2-9][2-9]+$') && input.size == 10

    raise 'InValid Input' unless valid
  end 
end 