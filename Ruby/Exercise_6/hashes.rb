# frozen_string_literal: true

# This file is to parctice Hashes in Ruby.

# 1. Hashes:

h1 = {}
h1['P1'] = 'Pedro'
h1['P2'] = 'Carlos'
h1['P3'] = 'Mendoza'
h1['P4'] = 'Manny'
h1.default = 'N\A Player'

puts(%(Trying to call an undefined key-value: #{h1['P5']}))
p(h1['p3'.capitalize])

# Initializing a hash using shorthand:
h2 = { 'User1' => 'Carlos',
       'User2' => 'Mendoza',
       'User3' => 'Manny',
       'User4' => 'Carlos' }
h2.default = 'N\A User'

p(h2['USER1'.downcase.capitalize])

h3 = { 'City3' => 'Cundinamarca',
       'City1' => 'Rotterdam',
       'City2' => 'Paris',
       'City4' => 'Cali' }
h3.default = 'N\A City'

p(h3['city4'.capitalize])

id = 0
id += 1

h4 = { 'ID' => id += 1,
       'ID1' => id += 1 }
h4.default = 'N\A ID'

p(h4['ID'])
p(h4['ID1'])

# Accesing to a undefined key => return nil.
p(h4['city1'])

# Hash order in memory is not evident, but from Ruby 1.9 hashes stores in the same order that they're defined.
print(%(\nHash order is not evident:\n))
print("#{h1}\n\n")
print("#{h2}\n\n")
print("#{h3}\n\n")
print("#{h4}\n\n")

# Sorting a Hash
puts(%(\nSorting a Hash:\n))
def sort_hash(a_hash)
  return a_hash.sort{ |a, b| a.to_s <=> b.to_s } # Why this don't work?
end

sort_hash(h3)
puts("#{h3}\n")

# 2. Hash methods:

# .has_key?() => Use key?() instead has_key?()
print(%(\n.h1 has P3?: #{h1.has_key?('P3')}\n)) # => returns a boolean.

puts('It has it.') if h1.key?('P3')

# .has_value?() => Use .value? insead
puts('It has it.') if h1.value?('Mendoza')

# .delete()
h1.delete('P4')
puts(h1.key?('P4') ? 'it as it.' : "It doesn't has.")
puts(h1['P4'])

# .invert
puts("\n.invert mehtod:\n")
puts("Before invert: #{h2}")
puts("After invert: #{h2.invert}")

# .keys
puts("\nPrinting all keys of h2: #{h2.keys}")
puts("\nPrinting all keys of h3: #{h3.keys}")
puts("\nPrinting all keys of h4: #{h4.keys}")

# .values
