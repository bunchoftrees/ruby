# frozen_string_literal: true

contact_list = []

def ask(question, kind = 'string')
  puts "#{question} "
  answer = gets.chomp
  answer = answer.to_i if kind == 'number'
  answer
end

answer = ask('What is your name?')
puts answer
