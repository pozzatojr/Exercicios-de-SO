#26. Receba 2 números inteiros. Verifique e mostre se o maior número é múltiplo do menor.
#declarar
num1 = 0
num2 = 0
resto = 0

def multiplos():
    global num1, num2, resto
    num1 = int(input("Digite um numero:"))
    num2 = int(input("Digite um numero:"))

    if (resto  == 0) and (num1 > num2) or (num2 > num1):
        print("São Múltiplos")
    else:
        print("Não são Múliplos")
    
def main():
    multiplos()

if __name__ == "__main__":
    main()