class Calculator
    def self.isInputValid(input)
        return Integer(input) rescue false
    end

    def self.isOperatorValid(operator)
        return operator == "-" || operator == '+' || operator == "/"
    end

    def self.calculate(input, input2, operator)
        return 0
    end
end

