#Receba 2 valores reais. Calcule e mostre o maior deles.
num1 = 0
num2 = 0

def maior():
    global num1, num2
    num1 = float(input("Digite o primeiro nuumero real:"))
    num2 = float(input("Digite o segundo numero real:"))

    if (num1 > num2):
        print("O maior numero é:", num1)
    else:
        print("O maior numero é:", num2)  

def main():
    maior()

if __name__ == "__main__":
    main()