class PigLatinizer
  attr_reader :text

  def initialize
  end

  def piglatinize_word(word)
    if word[0].downcase.chr =~ /[aeiou]/
      latin = word[0..word.length-1] + "way"
    elsif word[0].downcase.chr =~ /[dfghjklmnpqrstvwxyz]/ && word[1].downcase.chr =~ /[dfghjklmnpqrstvwxyz]/ && word[2].downcase.chr =~ /[dfghjklmnpqrstvwxyz]/
      latin = word[3..word.length-1] + word[0..2] + "ay"
    elsif word[0].downcase.chr =~ /[dfghjklmnpqrstvwxyz]/ && word[1].downcase.chr =~ /[dfghjklmnpqrstvwxyz]/
      latin = word[2..word.length-1] + word[0..1] + "ay"
    else
      latin = word[1..word.length-1] + word[0] + "ay"
    end
  end

  def piglatinize(string)
    string.split(" ").map{|word| piglatinize_word(word)}.join(" ")
  end

end
