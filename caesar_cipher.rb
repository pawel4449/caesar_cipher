 # project caesar solution 1 # 



 puts "Write a text to modify"
 input = gets.chomp.to_s  
 puts "How many shifts?"
 shifts = gets.to_i % 26                     # 26 letters in alphabet

 output = ""

 input.each_char do |char|

    if char =~ /[A-Z]/
        shifted = (char.ord - 65 + shifts) % 26       # 65 is number for "A" in Ascii 
        shifted = shifted + 26 if shifted < 0
        output += (shifted + 65).chr
    elsif char=~ /[a-z]/
        shifted = (char.ord - 97 + shifts )% 26       # 97 is number for "a" in Ascii
        shifted = shifted + 26 if shifted < 0  
        output += (shifted + 97).chr
    else
        output = output + char                      
   
    end
end

puts "Encrypted text"
puts output
