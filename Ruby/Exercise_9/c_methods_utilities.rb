# frozen_string_literal: true

# The goal of this file is to practice class methods utilities.

fn = 'iMethods_cMethods.rb'

if File.exist?(fn)
  puts('It does exist.')
  puts("File path: #{File.expand_path(fn)}\n",
       "File basename: #{File.basename(fn)}\n",
       "File dirname: #{File.dirname(fn)}",
       "File extension: #{File.extname(fn)}",
       "File mtime: #{File.mtime(fn)}", # => Timestamp when the file was created.
       "File size in bytes: #{File.size(fn)}")
end
