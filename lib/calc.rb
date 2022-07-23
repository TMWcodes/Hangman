
class Calculator
    def calculate(num1, operator, num2)
        if operator == "+"
            (num1 + num2).to_f
        elsif operator == "-"
            (num1 - num2).to_f
        elsif operator == "/"
            (num1 / num2).to_f
        elsif operator == "*"
            (num1 * num2).to_f
        else 
            "invalid operator"
        end

    end
end

# calc = Calculator.new
# calc.calculate(5,'*',2.5)






