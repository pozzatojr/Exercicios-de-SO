numeros = [0]*100
menorValor = 0
maiorValor = 0

numeros[0] = int(input("Digite um numero:"))
menorValor = numeros[0]
maiorValor = numeros[0]

for i in range (len(numeros) - 1):
    numeros[i] = int(input("Digite um numero:"))
    if menorValor > numeros[i]:
        menorValor = numeros[i]
    if maiorValor < numeros[i]:
        maiorValor = numeros[i]
print(f"O menor valor digitado foi: {menorValor}")
print(f"O maior valor digitado foi: {maiorValor}")
