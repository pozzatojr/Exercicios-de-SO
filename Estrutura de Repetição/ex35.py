#Receba 2 números inteiros, verifique qual o maior entre eles. Calcule e mostre o resultado da
#somatória dos números ímpares entre esses valores.
num1 = int(input("Digite um numero:"))
num2 = int(input("Digite um numero:"))
cont = 1
res = 0

if num1 > num2:
    for cont in range(num2, num1):
        cont = cont + 1
        if (cont % 2 != 0) :
            res = res + cont
    print(res)
else:
    for cont in range(num1, num2):
        cont = cont + 1
        if (cont % 2 != 0) :
            res = res + cont
    print(res)