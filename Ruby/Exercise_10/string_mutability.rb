## frozen_string_literal: true

# The goal of this file is to understand ->
# - Values mutability.
# - Mutable Methods and Operators: <<, method!.

# 1. Values mutability.
puts('1. Values mutability:')

name1 = 'John'
name2 = 'John'

name1_id = name1.object_id
name2_id = name2.object_id

puts("name1 ID ==> #{name1_id}")
puts("name2 ID ==> #{name2_id}")

name2 = 'Jessica'
puts("name2 ID ==> #{name2.object_id}")

# 2. Mutable operators:
puts("\n2. Mutable opeartors:")

name1 << ' Doe'
name2 << ' McNeal'

puts("name 1 value now is ==> #{name1}.
  Is its ID the same? ==> #{name1.object_id.equal?(name1_id) ? "Yes, it is." : "No, it's #{name1.object_id}"}")

puts("name 2 value now is ==> #{name2}.
Is its ID the same? ==> #{name2.object_id.equal?(name2_id) ? 'Yes, it is.' : "No, it's #{name2.object_id}"}")
