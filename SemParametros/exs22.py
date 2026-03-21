#Receba 2 valores inteiros e diferentes. Mostre seus valores em ordem crescente
num1 = 0
num2 = 0

def crescente():
    global num1, num2
    num1 = int((input("Digite o primeiro numero:")))
    num2 = int(input("Digite o segundo numero:"))
    if (num1 == num2):
        print("Digite numeros difentes")
    elif (num1 < num2):
        print("A orderm crescente é:",num1, num2)
    else:
        print("A ordem crescente é:",num2 , num1)

def main():
    crescente()

if  __name__ == "__main__":
    main()