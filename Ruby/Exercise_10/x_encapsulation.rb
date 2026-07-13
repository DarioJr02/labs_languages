# The goal of this file is to practice about ->
# - Encapsulation.
# - Information Hiding.

# 1. Class X to practice encapsulation.
class X
  # Accesors.
  attr_accessor(:name, :age)

  def initialize(name, age)
    @name = name
    @age = age
  end

  def adult?
    return (@age >= 18 ? true : false)
  end
end

student = X.new('Mike', 17)
puts("The student name is ==> #{student.name}, and its age ==> #{student.age}",
     "Is #{student.name} adult? ==> #{student.adult? ? 'Yes.' : 'No.'}")

student.age = 21
puts("#{student.name} is #{student.age} now, is he an adult? ==> #{student.adult? ? 'Yes.' : 'No.'}")
