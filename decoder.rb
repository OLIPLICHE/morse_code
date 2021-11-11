print 'Enter your morse code: '

morse_str = gets.chomp

def decode_char(character)
  dictionary = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.',
    'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...',
    'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--', 'Z' => '--..',
    '1' => '.----', '2' => '..---', '3' => '...--', '4' => '....-', '5' => '.....', '6' => '-....', '7' => '--...',
    '8' => '---..', '9' => '----.', '0' => '-----'
  }

  dictionary.key(character) || ' '
end

def decode_word(morse_text)
  text = ''
    morse_text.split.each do |char|
      text += decode_char(char)
    end
  text
end

def result(morse_result)
  result = []
  morse_result.split(' ').each do |word|
    result.push(decode_word)
  end
  result.join(' ')
end

puts "Your message is: #{result(morse_str)}"
