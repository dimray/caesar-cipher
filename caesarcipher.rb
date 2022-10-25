def caesar_cipher(string, shift)
  result = ""
  string.each_char do |char|

    if char =~ /[a-z]/
      numb = char.ord
      numb -=26 if numb + shift > 122
      numb +=26 if numb + shift < 97
      shifted_numb = numb + shift
      result += shifted_numb.chr      
      
    elsif char =~ /[A-Z]/
      numb = char.ord
      numb -=26 if numb + shift > 90
      numb +=26 if numb + shift < 65
      shifted_numb = numb + shift
      result += shifted_numb.chr      

    else 
      result += char    
    end    
  end
  p result  
end

caesar_cipher("What a string!", 5)
