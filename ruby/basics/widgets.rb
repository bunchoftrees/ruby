def ask(question)
    print "#{question} "
    gets.chomp
end

puts "Welcome to the Widgets Store."
answer = ask("How many widgets are you ordering?")
number = answer.to_i
puts "For #{answer} widget(s), your total is $#{number * 10}."

