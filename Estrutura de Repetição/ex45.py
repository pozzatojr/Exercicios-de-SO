#Calcule e mostre a série 1 – 2/4 + 3/9 – 4/16 + 5/25 - ... + 15/225
soma = 0
for i in range(1, 16):
    n = i * i
    conta = i / n
    if  i % 2 == 0:
        conta = - conta
    else:
        conta = conta
    soma = conta + soma
    print(i,"/", n,"=", conta)
print(soma)