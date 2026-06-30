# frozen_string_literal: true

# The goal of this file is to practice class methods utilities.

fn = 'iMethods_cMethods.rb'

if File.exist?(fn)
  puts('It does exist.')
  puts("File path: #{File.expand_path(fn)}\n", # => File full path based on user's home directory.
       "File basename: #{File.basename(fn)}\n", # => File's name.
       "File dirname: #{File.dirname(fn)}", # => directory name based un relative working directory.
       "File extension: #{File.extname(fn)}", # => File's extension.
       "File mtime: #{File.mtime(fn)}", # => Timestamp when the file was created.
       "File size in bytes: #{File.size(fn)}") # => File size in bytes.
end
