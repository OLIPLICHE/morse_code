require 'set'

dictionary = Hash.new

dictionary[" "] = " " 
dictionary["A"] = ".-" 
dictionary["B"] = "-..." 
dictionary["C"] = "-.-." 
dictionary["D"] = "-.." 
dictionary["E"] = "." 
dictionary["F"] = "..-." 
dictionary["G"] = "--." 
dictionary["H"] = "...." 
dictionary["I"] = ".." 
dictionary["J"] = ".---" 
dictionary["K"] = "-.-" 
dictionary["L"] = ".-.." 
dictionary["M"] = "--" 
dictionary["N"] = "-." 
dictionary["O"] = "---" 
dictionary["P"] = ".--." 
dictionary["Q"] = "--.-" 
dictionary["R"] = ".-." 
dictionary["S"] = "..." 
dictionary["T"] = "-" 
dictionary["U"] = "..-" 
dictionary["V"] = "...-" 
dictionary["W"] = ".--" 
dictionary["X"] = "-..-" 
dictionary["Y"] = "-.--" 
dictionary["Z"] = "--.." 

dictionary["1"] = ".----" 
dictionary["2"] = "..---" 
dictionary["3"] = "...--" 
dictionary["4"] = "....-" 
dictionary["5"] = "....." 
dictionary["6"] = "-...." 
dictionary["7"] = "--..." 
dictionary["8"] = "---.." 
dictionary["9"] = "----." 
dictionary["0"] = "-----"


text = "this is morse code"
puts "text: #{text}"

puts 

morse = ""

for c in text.split("")

    morse += dictionary[ c.upcase ].to_s + " "
end

puts "morse: #{morse}"