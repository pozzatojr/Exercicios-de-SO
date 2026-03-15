#Receba um número. Calcule e mostre os resultados da tabuada desse número.
num1 = int(input("Digite um numero:"))
cont = 0
tab = 0
for cont in range(0, 10):
    cont = cont + 1
    tab = num1 * cont
    print(num1,"X", cont,"=", tab)