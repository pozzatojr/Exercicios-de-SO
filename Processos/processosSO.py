import platform
import subprocess

def os():
    system: str = ''
    system = platform.system()
    return system

def comando(nome_os):
    saida: str = ""
    if nome_os == "Windows":
        saida = subprocess.run("ping -4 -n 10 www.google.com.br", shell=True, capture_output=True, text=True, encoding="cp850") #rodo o comando, transformando em texto e arrumando sua formatação
        linhas = saida.stdout.split(",") #separo o comando com base nas virgulas
        
        for linha in linhas:
            if "Média" in linha:
                    print("A latência média do google é: " + linha.strip()) #sem o strip tem espaço no começo e fim
    
    else:
        saida = subprocess.run("ping -4 -c 10 www.google.com.br", shell=True, capture_output=True, text=True, encoding="cp850")
        linhas = saida.stdout.split("/")

        for linha in linhas:
            if "avg" in linha:
                print("A latência média do google é: ",linha, linhas[-3], " ms")

def main():
    nome_os = os()
    print(nome_os)
    comando(nome_os)
    

if __name__ == '__main__':
    main()