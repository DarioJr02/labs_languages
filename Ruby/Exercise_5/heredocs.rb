# frozen_string_literal: true
#
p_hedoc = <<-EODOC
  This is a plain heredoc.
        Line1.
          Line2.
        All spaces and tabs will be mantained.
EODOC

s_hedoc = <<~EODOC1
                  This is is a squiggly heredoc.
            All spaces and tabs are deleted.
    and the text will mantain at the left.
EODOC1

s_hedoc1 = <<~EDOC
    This is a snippet of a method.
    obj.method(arg1, arg2) => String.
    def method(arg1, arg2)
    end
EDOC

puts p_hedoc
puts s_hedoc1
