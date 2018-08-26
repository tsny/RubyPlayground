require_relative 'calculatorModel.rb'
require_relative 'inputValidation.rb'

puts "\n-----\nWelcome, you may now calculate your things here!\n-----\n "
print "Please enter your first input: "

firstInput = InputValidation.validationLoop("operand")

print "Please enter your second input: "

secondInput = InputValidation.validationLoop("operand")

print "Please enter your operator: "

operator = InputValidation.validationLoop("operator")

output = Calculator.calculate(firstInput, secondInput, operator)

puts output

# TODO: Loop so user can enter multiple operands and sequentially perform more operations