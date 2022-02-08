require "pry-byebug"



def split(string)
    if !(string.is_a? String)
        return p "Error. Input is not a string" 
    else
        return string.split('')
    end
end

def convert_char(char,num)
    (char.ord + (num % 26)).chr
end




def ascii(string, num )
    split(string).each do |char|
        if ( (65 <= char.ord) || (char.ord <= 96) )
            return ascii(char)
        elsif ( (97 <= char.ord) || (char.ord <= 122) )
            return ascii(char)
        end
    end
end



p convert_char("a", -1 )