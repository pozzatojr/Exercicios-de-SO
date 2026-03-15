#Receba 2 números inteiros. Verifique e mostre todos os números primos existentes entreeles.
num1 = int(input("Digite um numero:"))
num2 = int(input("Digite um numero:"))
analisador = 0
inicio =  0
fim = 0
if num1 > num2:
    fim = num1
    inicio = num2
else:
    fim = num2
    inicio = num1

for i in range(inicio, fim + 1):
    divisores = 0
    for n in range(1, i + 1):
        if i % n == 0:
            divisores += 1
    if divisores == 2:
        print(i)