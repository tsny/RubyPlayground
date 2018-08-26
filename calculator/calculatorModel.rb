class Calculator
    def self.isOperandValid(operand)
        return Integer(operand) rescue false
    end

    def self.isOperatorValid(operator)
        return operator == "-" || operator == '+' || operator == "/"
    end

    def self.calculate(input, input2, operator)
        case operator

        when "-"
            return input - input2
        when "+"
            return input + input2
        when "/"
            return input / input2
        when "*"
            return input * input2
        else
            return 0
        end
    end
end

