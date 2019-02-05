# PhoneWorder


## Running the app

* Go to the project folder and run `bundle install`

* Run `ruby ./lib/exec.rb`

* Enter the 10 digit mobile number

* Then the result will be printed

## Running the spec

* Run rspec from the project folder


## Approach

* When the app starts, for each words in the dictionay corresponding numbers will be calucalated and saved in a map. This will avoid finding the word combinations for numbers every time we needed. Also finding number for a word is relatively easier (just a hash lookup) than finding words for a number(need to find all combination of letters).

* Then the program will split the provided phone number based on the minimum word 
  length and recursively calculates the words combination.

