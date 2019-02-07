module Validator

  def self.validate(input)
    valid = input.match?('^[2-9][2-9]+$') && input.size == 10

    raise 'InValid Input' unless valid
  end 
end 