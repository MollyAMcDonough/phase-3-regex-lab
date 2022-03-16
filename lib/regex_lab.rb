require 'pry'
def starts_with_a_vowel?(word)
    !!word.match(/^[aeiouy]/i)

end

def words_starting_with_un_and_ending_with_ing(text)
    text.scan(/\b+un+[a-z]*ing+\b/i)
end

def words_five_letters_long(text)
    text.scan(/\b[a-z]{5}\b/i)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    !!text.match(/^[A-Z].*[\?\.\!]\z/)
end

def valid_phone_number?(phone)
    if phone.length > 0 
        numbers = phone.gsub!(/\D/,'')
        if numbers
            return numbers.length == 10
        else
            return phone.length == 10
        end
    else
        return false
    end
end

valid_numbers = ["2438894546", "(718)891-1313", "234 435 9978", "(800)4261134"]
valid_numbers.each do |phone|
    #binding.pry
    valid_phone_number?(phone)
end
