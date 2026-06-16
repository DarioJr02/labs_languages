# frozen_string_literal: true

# This file is to parctice Hashes in Ruby.

h1 = {}
h1['P1'] = 'Pedro'
h1['P2'] = 'Carlos'
h1['P3'] = 'Mendoza'
h1['P4'] = 'Manny'

p(h1['p3'.capitalize])

# Initializing a hash using shorthand:
h2 = { 'User1' => 'Carlos',
       'User2' => 'Mendoza',
       'User3' => 'Manny',
       'User4' => 'Carlos' }

p(h2['USER1'.downcase.capitalize])

h3 = { 'City1' => 'Cundinamarca',
       'City2' => 'Rotterdam',
       'City3' => 'Paris',
       'City4' => 'Cali' }

p(h3['city4'.capitalize])

id = 0
id += 1

h4 = { 'ID' => id += 1,
       'ID1' => id += 1 }

p(h4['ID'])
p(h4['ID1'])

# Accesing to a undefined key => return nil.
p(h4['city1'])
