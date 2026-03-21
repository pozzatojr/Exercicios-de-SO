#Receba um valor inteiro. Verifique e mostre se é divisível por 2 e 3.
num1 = 0

def divisivel():
    global num1
    num = int(input("Digite  um numero:"))
    if (num % 2 == 0) and (num % 3 == 0):
        print("O numero é divisivel por 2 e 3")
    elif (num % 2 == 0):
        print("O numero é divisivel por 2")
    elif (num % 3 == 0):
        print("O numero é divisivel por 3")
    else:
        print("Não é divisivel por 2 ou 3")

def main():
    divisivel()

if __name__ == "__main__":
    main()