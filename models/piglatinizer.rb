class PigLatinizer

  def initialize
  end

  def word_piglatinize(word)
    @vowels = "aeoui#{"aeoui".upcase}"
    @consonants = "bcdfghjklmnpqrstvwxyz#{"bcdfghjklmnpqrstvwxyz".upcase}"

    if @vowels.include?(word[0])
      new_word = "#{word}way"
    else
      marker = 0
      word.split('').each_with_index do |l, i|
        if @vowels.include?(l)
          marker = i
          break
        end
      end
      new_word = "#{word[marker..word.size]}#{word[0..marker-1]}ay"
    end
    return new_word
  end

  def piglatinize(text)
    new_text_array = []
    text.split(' ').each do |word|
      new_text_array << word_piglatinize(word)
    end
    return new_text_array.join(' ')
  end

end
