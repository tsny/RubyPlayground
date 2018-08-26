require_relative 'calculatorModel.rb'

class InputValidation

    def self.validationLoop(type)

        input = gets.strip

        # The initial validation on the user's input
        if (type == "operator")
            if(Calculator.isOperatorValid(input))
                return input
            end

        elsif (type == "operand")
            if(Calculator.isOperandValid(input))
                return input.to_i rescue 0
            end
        end

        # Keep asking for input if the user inputs garbage
        while(true)

            print "I didn't understand your #{ type } input, please re-enter your input: "
            input = gets.strip

            if(type == "operator")
                if(Calculator.isOperatorValid(input))
                    return input
                end

            elsif(type == "operand")
                if(Calculator.isOperandValid(input))
                    return input.to_i rescue 0
                end
            end
        end

        return input
    end
end



# Older version that separated the validation loop
=begin
    def self.operandValidationLoop
        input = gets.strip

        currentInputIsValid = Calculator.isOperandValid(input)

        if (!currentInputIsValid)
            while(true)
                print "I didn't understand your input, please re-enter your input: "
                input = gets.strip
                currentInputIsValid = Calculator.isOperandValid(input)
                if (currentInputIsValid)
                    break
                end
            end
        end

        return input.to_i rescue 0
    end

    def self.operatorValidationLoop
        input = gets.strip

        operatorIsValid = Calculator.isOperatorValid(input)

        if (!operatorIsValid)
            while(true)
                print "I didn't understand your input, please re-enter your input: "
                input = gets.strip
                operatorIsValid = Calculator.isOperatorValid(input)
                if (operatorIsValid)
                    break
                end
            end
        end

        return input
    end
=end