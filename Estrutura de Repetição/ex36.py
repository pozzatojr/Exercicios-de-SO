#Receba um número N. Calcule e mostre a série 1 + 1/1! + 1/2! + ... + 1/N!
num1 = int(input("Digite um numero:"))
i = 0
res = 1
fat = 1
for i in range(1, num1 + 1):
    fat = fat * i
    res = res + 1 / fat
print(res)