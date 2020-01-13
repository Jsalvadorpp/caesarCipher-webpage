def caesarCipher(text,shift)
    output = ""
    text.each_byte do |charCode|

        
        newCharCode = charCode + (shift).abs()

        if charCode.between?(97,122)
            
            until newCharCode.between?(97,122)
                newCharCode -= 26
            end
            output += newCharCode.chr

        elsif charCode.between?(65,90)

            until newCharCode.between?(65,90)
                newCharCode -= 26
            end
            output += newCharCode.chr

        else
            output += charCode.chr
        end

    end

    return output
end

#print caesarCipher("What a string!",5)