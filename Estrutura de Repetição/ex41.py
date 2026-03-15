#Mostre todas as possibilidades de 2 dados de forma que a soma tenha como resultado 7.
num1 = 0
num2 = 0
for i in range(1, 7):
    cont = 0
    for n in range(1, 7):
        if i + n == 7:
            num1 = i
            num2 = n
            cont += 1
            print(num1, num2)