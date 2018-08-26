require_relative 'calculatorModel.rb'

class InputValidation
    def self.operandValidationLoop
        input = gets.strip

        currentInputIsValid = Calculator.isInputValid(input)

        if (!currentInputIsValid)
            while(true)
                print "I didn't understand your input, please re-enter your input: "
                input = gets.strip
                currentInputIsValid = Calculator.isInputValid(input)
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
end