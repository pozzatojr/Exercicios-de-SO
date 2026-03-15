#Calcule e mostre a série 1 + 2/3 + 3/5 + ... + 50/99
impar = 0
conta = 0
for i  in range(1, 50):
    impar = 2 * i - 1
    conta = i / impar
    print(i, impar, conta)
    

