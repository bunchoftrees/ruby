# frozen_string_literal: true

def ask(question)
  print "#{question} "
  gets.chomp.to_i
end

def price(quantity)
  price_per_unit = if quantity >= 100
                     8
                   elsif quantity >= 50
                     9
                   else
                     10
                   end
  quantity * price_per_unit
end

puts 'Welcome to the Widgets Store.'
answer = ask('How many widgets are you ordering?')
total = price(answer)
puts "For #{answer} widget(s), your total is $#{total}."
