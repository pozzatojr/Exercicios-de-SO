#33. Receba um número. Calcule e mostre a série 1 + 1/2 + 1/3 + ... + 1/N.
num1 = int(input("Digite um numero:"))
res = 0
cont = 0
while (cont < num1):
    cont = cont + 1
    res = (res + (1 / cont))
print(res)