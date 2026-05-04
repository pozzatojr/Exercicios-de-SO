notas = [0]*5
media :float = 0.0
cont : int = 0
array = []

for i in range(len(notas)):
    notas[i] = int(input(f"Digite a nota {i}: "))
    media = media + notas[i]
media = media / i

for i in range(len(notas)):
    if notas[i] > media:
        cont += 1
    if notas[i] < media:
        array.append(i)

print(f"A média é: {media}")
print(f"A quantidade de notas acima da media: {cont}")
print(f"A posição das notas abaixo da media são: {array}")
