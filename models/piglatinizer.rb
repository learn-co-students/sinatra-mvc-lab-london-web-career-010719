class PigLatinizer
  attr_reader :text

  def initialize
  end

  def piglatinize(word)
    if word =~ (/\A[aeiou]/i)
      word = word + 'ay'
    elsif word =~ (/\A[^aeiou]/i)
      match = /\A[^aeiou]/i.match(word)
      word = match.post_match + match.to_s + 'ay'
    end
    word
  end

  def pigify_text
    pig_arr = text.split(" ").map {|word| pigify_word(word)}
    pig_arr.join(" ")
  end

end
