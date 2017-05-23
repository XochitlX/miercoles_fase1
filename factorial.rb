
def factorial_iterative(number) #sin recursividad
  factorial = 1
  for item in 1..number
    factorial = item * factorial
  end
  factorial
end

def factorial_recursive(number) #con recursividad
  (number > 0) ? factorial_recursive(number - 1) * number : (factorial_recursive = 1 if number == 0)
end

p factorial_iterative(25)
p factorial_recursive(5)

# Estos métodos generan ya para numeros grandes muchos ceros, lo que equivale multiplicarlos 
# a su potencia a base 10