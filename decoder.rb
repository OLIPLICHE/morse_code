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

def decode_word(morse_word)
  text = ''
  morse_word.split.each do |char|
    text += decode_char(char)
  end
  text
end

def decode_result(morse_result)
  decode_result = []
  morse_result.split.each do |text|
    decode_result.push(text)
  end
  decode_result.join(' ')
end

puts "Your message is: #{decode_result(morse_str)}"
