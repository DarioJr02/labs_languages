# frozen_string_literal: true

# The goal of this file is to practice class methods utilities.

# Relative position.
fn = 'iMethods_cMethods.rb'
puts("#{File.basename(fn)} - info:")

if File.exist?(fn)
  puts('It does exist.')
  puts("File path: #{File.expand_path(fn)}\n", # => File full path based on user's home directory.
       "File basename: #{File.basename(fn)}\n", # => File's name.
       "File dirname: #{File.dirname(fn)}", # => directory name based un relative working directory.
       "File extension: #{File.extname(fn)}", # => File's extension.
       "File mtime: #{File.mtime(fn)}", # => Timestamp when the file was created.
       "File size in bytes: #{File.size(fn)}") # => File size in bytes.
else
  puts("#{fn} NOT FOUND.")
end

# Relative position.
fn1 = '../Exercise_1/file.rb/data_types.rb'
puts("\n#{File.basename(fn1)} - info:")

if File.exist?(fn)
  puts('It does exist.')
  puts("File basename: #{File.basename(fn1)}",
       "File directory name: #{File.dirname(fn1)}",
       "File extension: #{File.extname(fn1)}",
       "File size in bytes: #{File.size(fn1)}",
       "File timestamp: #{File.mtime(fn1)}",
       "File full path: #{File.expand_path(fn1)}")
else
  puts("#{fn1} NOT FOUND")
end
