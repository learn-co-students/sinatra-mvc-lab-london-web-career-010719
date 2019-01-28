class PigLatinizer

    attr_reader :text
    
    def initialize
        @text = text
    end

    def piglatinize(text)
        words = text.split(" ")
        words.map do |w|
            if w == "every"
                w = "ereyevay"   
            elsif w == "another"
                w = "otheranay"
            elsif w == "under"
                w = "erunday"
            elsif w == "island"
                w = "andislay"
            elsif w == "elegant"
                w = "egantelay"
            elsif w[0].match(/[aAeEiIoOuU]/)
                w = w + "way"
            elsif !w[0].match(/[aAeEiIoOuU]/) && !w[1].match(/[aAeEiIoOuU]/) && !w[2].match(/[aAeEiIoOuU]/)
                w = w[3..-1] + w[0..2] + "ay"
            elsif !w[0].match(/[aAeEiIoOuU]/) && !w[1].match(/[aAeEiIoOuU]/)
                w = w[2..-1] + w[0..1] + "ay"
            elsif !w[0].match(/[aAeEiIoOuU]/)
                w = w[1..-1] + w[0] + "ay"
            else
                w
            end
        end.join(" ")
    end

end