class PigLatinizer

    attr_reader :text

    def initialize(text)
        @text= text.downcase
    end 

    def enswinerize
        words = self.text.split(" ")
        new_sentence = []


        words.each do |word|
            if
            word[0] == "s" && word[1] == "h" 
            first_letter = word[0..1]
                word = word[2..-1]
                new_sentence << "#{word}#{first_letter}ay"
            
            
            
            
            else
            first_letter = word[0]
            word = word[1..-1]
            new_sentence << "#{word}#{first_letter}ay"

            
            end

        end 
        new_sentence.join(" ") 
    end 
end 