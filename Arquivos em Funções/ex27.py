import os
def fibonacci():
    num1 = int(input("Digite um numero:"))
    i = 0
    fib = 0

    a = 0
    b = 1

    pasta = 'C:\\temp\\'
    arq = 'ex27.txt'
    caminho = os.path.join(pasta, arq)

    os.makedirs(pasta, exist_ok=True)

    if (os.path.exists(pasta) and os.path.isdir(pasta)):
        enc = 'utf-8'
        for i in range(0, num1):
            tipo = 'a'
            if (i == 0):
                tipo = 'w'
            fib = a + b
            with open (caminho, tipo) as file:
                file.write(str(fib) + "\n")
            a = b
            b = fib
 
def main():
    fibonacci()

if __name__ == '__main__':
    main()

