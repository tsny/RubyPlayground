require_relative 'calculatorModel.rb'
require_relative 'inputValidation.rb'

puts "\n-----\nWelcome, you may now calculate your things here!\n-----\n"
print "Please enter your first input: "

firstInput = InputValidation.operandValidationLoop()

print "Please enter your second input: "

secondInput = InputValidation.operandValidationLoop()