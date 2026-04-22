import os

def criar_arq():
    dir = 'C:\\temp\\'
    arq = 'ex31.txt'

    caminho = dir + arq

    os.makedirs(dir, exist_ok=True)

    if (os.path.exists(dir) and os.path.isdir(dir)):
        enc = 'utf-8'

        for i in range(10, 151):
            tipo = 'a'
            if (i == 10):
                tipo = 'w'
            linha = str(mostrarQuadrados(i)) + "\n"    
            with open (caminho, tipo) as file:
                file.write(linha)

def mostrarQuadrados(i):
    return i ** 2

def main():
    criar_arq()


if __name__ == '__main__':
    main()  
