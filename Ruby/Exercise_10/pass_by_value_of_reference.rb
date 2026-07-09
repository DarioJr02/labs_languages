# frozen_string_literal: true

# The goal of this file is understand and practice ->
# - Pass-by-value-of-reference.

def pass(name, new_name)
  name = new_name

  msg = "Now i'm #{name} | Object id ==> #{name.object_id}"
  puts("AT METHOD PASS ==> #{msg}")

  return msg
end

# Mark
n = 'Mark'
puts("#{n}:\n")
puts("My name is #{n} | Object id ==> #{n.object_id}")

n_id = n.object_id

pass(n, 'Jesus')
puts("Is my name Mark? ==> #{n.eql?('Mark') ? 'Yes' : "No, my name is #{n}"}.")
puts("Is my id still #{n_id}? ==> #{n.object_id.eql?(n_id)}")

# Carlos
n2 = 'Carlos'
puts("\n#{n2}:\n")

puts("My name is #{n2} | Object id ==> #{n2.object_id}")

n2_id = n2.object_id

pass(n2, 'Miguel')
puts("Is my name #{n2}? ==> #{n2.eql?('Carlos') ? 'Yes' : "No, my name is #{n2}"}")
puts("Is my id still #{n2_id}? ==> #{n2.object_id.eql?(n2_id)}")

