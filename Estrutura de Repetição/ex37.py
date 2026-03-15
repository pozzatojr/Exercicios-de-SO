#Receba um número inteiro. Calcule e mostre a série de Fibonacci até o seu N’nésimo termo.
num1 = int(input("Digite um numero:"))
i = 0
fib = 0

a = 0
b = 1

for i in range(0, num1):
    fib = a + b
    print(fib)
    a = b
    b = fib