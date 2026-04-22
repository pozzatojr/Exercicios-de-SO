import os

def readArq(caminho):
    if (os.path.exists(caminho) and os.path.isfile(caminho)):
        tipo = 'r'
        with open (caminho, tipo) as file:
            for i in file:
                num = int(i.strip())
                result = verificarPar(num)

                if result != -1:
                    print(result)
                
def verificarPar(numero):
    if numero % 2 != 0:
        return numero
    else: 
        return -1
    
def main():
    pasta = 'C:\\temp\\'
    arq = 'ex27.txt'
    caminho = os.path.join(pasta, arq)
    os.makedirs(pasta, exist_ok=True)

    readArq(caminho)

if __name__ == '__main__':
    main()

