# frozen_string_literal: true

# percent strings: https://docs.ruby-lang.org/en/2.0.0/syntax/literals_rdoc.html#label-Percent+Strings
item = 'milk'
grocery_array = %W[#{item} eggs bread]

puts grocery_array.inspect
