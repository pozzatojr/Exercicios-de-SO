#Receba um número inteiro. Calcule e mostre o seu fatorial.
num1 = int(input("Digite um numero:"))
cont = 0
fat = 1

while cont < num1:
    cont = cont + 1
    fat = fat * cont
    print(fat)