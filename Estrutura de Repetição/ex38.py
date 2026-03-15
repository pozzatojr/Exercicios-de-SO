#Receba 100 números inteiros reais. Verifique e mostre o maior e o menor valor. Obs.:
#somente valores positivos.
maior = 0
menor = 99999999999999999999999

for i in range(100):
    num = int(input("Digite um numero:"))
    if num < menor:
        menor = num
    if num > maior:
        maior = num
print(menor)
print(maior)