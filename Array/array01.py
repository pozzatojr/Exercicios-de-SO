numeros = [0] * 50
media = 0
cont = 0
impar = 0

for i in range(len(numeros)):
    numeros[i] = int(input("Digite um numero: "))
    if numeros[i] >= 10 and numeros[i] <= 200:
        media = media + numeros[i]
        cont += 1
    if numeros[i] % 2 != 0:
        impar = impar + numeros[i]

media = media / cont
print(f"A media dos numeros entre 10 - 200 é: {media}")
print(f"A soma dos numeros impares digitados é igual a: {impar}")