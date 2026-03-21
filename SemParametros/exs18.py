#Receba 2 valores inteiros. Calcule e mostre o resultado da diferença do maior pelo menor valor.
n1 = 0
n2 = 0

def diferença():
    global n1, n2
    n1 = int(input("Digite o primeiro numero:"))
    n2 = int(input("Digite um segudo numero:"))
    if (n1 > n2):
        print(n1, "e", n2)
    else:
        print(n2, "e", n1)
        
    print("Fim do Programa")

def main():
    diferença()

if __name__ == "__main__":
    main()
    