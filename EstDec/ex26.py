#26. Receba 2 números inteiros. Verifique e mostre se o maior número é múltiplo do menor.
#declarar
num1 = int(input("Digite um numero:"))
num2 = int(input("Digite um numero:"))
resto = num1 % num2
#início
if (resto  == 0) and (num1 > num2) or (num2 > num1):
    print("São Múltiplos")
else:
    print("Não são Múliplos")