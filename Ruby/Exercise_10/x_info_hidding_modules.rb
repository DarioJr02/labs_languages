# frozen_string_literal: true

# The goal of this file is to learn and practice ->
# - Information hidding using modules.

module Farm
  class Chicken
  end

  class Cow
  end

  class Goat
  end
end

# ob = Chicken.new # ==> Error: uninitialized constant Chicken.
# puts(ob.class)

ob = Farm::Chicken.new
puts(ob, ob.class)

ob2 = Farm::Cow.new
puts(ob, ob2.class)

ob3 = Farm::Goat.new
puts(ob3, ob3.class)
