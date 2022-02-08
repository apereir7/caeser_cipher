require "pry-byebug"



def split(string)
    if !(string.is_a? String)
        return p "Error. Input is not a string" 
    else
        return string.split('')
    end
end


def ascii(char,num )
    return (char.ord + (num % 26)).chr 
end



