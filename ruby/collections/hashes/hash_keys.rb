# frozen_string_literal: true

hash = { 'item' => 'Bread', 'quantity' => 1, 'brand' => 'Wonder' }

puts hash.key?('brand')
puts hash.member?('quantity')
puts hash.key?('item')
hash.store('cost', 2.65)
puts hash
