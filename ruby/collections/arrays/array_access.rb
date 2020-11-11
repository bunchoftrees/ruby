# frozen_string_literal: true

grocery_list = ['milk', 'eggs', 'bread', 'ice cream', 'carrots', 'potatoes']

first_item = grocery_list[0]
puts first_item
last_item = grocery_list.last
puts last_item

puts grocery_list.count

grocery_list.insert(2, 'oatmeal')
puts(grocery_list.inspect, grocery_list.count)

remove_last = grocery_list.pop
puts remove_last
puts grocery_list.inspect

remove_first = grocery_list.shift
puts remove_first
puts grocery_list.inspect
