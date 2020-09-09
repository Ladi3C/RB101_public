=begin

Problem:  Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days 
          before computers had video screens).

          For this practice problem, write a one-line program that creates the following output 
          10 times, with the subsequent line indented 1 space to the right:

Example:      The Flintstones Rock!
               The Flintstones Rock!
                The Flintstones Rock!

Rules:    One-line program
          10 times 
          subsequent line indented 1 space to the right

=end 

10.times { |num| puts "#{" " * num}The Flintstones Rock!"} 