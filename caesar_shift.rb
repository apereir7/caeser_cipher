require "pry-byebug"



def split(string)
    if !(string.is_a? String)
        return p "Error. Input is not a string" 
    else
        return string.split('')
    end
end

def check_letter(char,num)
    if char.ord.between?(97, 122)
        calculation = (char.ord + (num % 26))
        if (calculation > 122)
            (calculation - 26).chr
        else
            calculation.chr
        end
    elsif char.ord.between?(65, 90)
        calculation = (char.ord + (num % 26))
        if (calculation > 90)
            (calculation - 26).chr
        else
            calculation.chr
        end
    end
end




def ascii(string, num )
    array = []
    split(string).each do |char|
        if ( char.ord.between?(65, 90) || char.ord.between?(97,122) )
            array << check_letter(char,num) 
        else
            array << char
        end
    end
    return array.join()
end







