class Anagram

    def initialize(string)
        @string = string
        @result = []
    end
    
    def match(t_arr)
        t_arr.each do |x|
            #if x.reverse == @string
            if x.chars.sort == @string.chars.sort
                #split("") also works instead of #chars
                @result << x
            end
        end
        @result
    end
end