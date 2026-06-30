# frozen_string_literal: true

# The goal of this file is to practice class methods utilities.

fn = 'iMethods_cMethods.rb'

if File.exist?(fn)
  puts('It does exist.')
  puts("File path: #{File.expand_path(fn)}")
  puts("File basename: #{File.basename(fn)}")
  puts("")
end
