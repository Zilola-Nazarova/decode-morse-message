# require 'bundler/setup'

MORSE_DICT = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}.freeze

def decode_char(char)
  MORSE_DICT[char.to_s].upcase
end

# puts decode_char('---')

def decode_word(word)
  morse_char_array = word.to_s.split
  letter_char_array = morse_char_array.map { |char| decode_char(char) }
  letter_char_array.join
end

# puts decode_word('-- -.--')

def decode(message)
  morse_word_array = message.to_s.split('   ')
  letter_word_array = morse_word_array.map { |word| decode_word(word) }
  letter_word_array.join(' ')
end

# puts decode('-- -.--   -. .- -- .')

# puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
