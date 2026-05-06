import platform
import subprocess

def os():
    system: str = ''
    system = platform.system()
    return system

def escolha(resposta):
    print("1 - Listar processos\n2 - Matar processo por PID\n3 - Matar processos por nome\n9 - encerrar")
    while True:
        resposta = int(input("O que deseja fazer?: "))
        if resposta == 1 or resposta == 2 or resposta == 3 or resposta == 9:
            return resposta
        else:
            print("Valor inválido, digite novamente")

def listar_processos(nome_os):
    if nome_os == "Windows":
        saida = subprocess.run("TASKLIST /FO TABLE")
        print(saida)
    else:
        saida = subprocess.run("ps -ef")
        print(saida)

def matar_proc(nome_os):
    if nome_os == "Windows":
        saida = subprocess.run("TASKLIST /FO TABLE")
        print(saida)
        proc_morrera = int(input("Digite o ID do processo que deseja matar: "))
        kill = subprocess.run(f"TASKKILL /PID {proc_morrera}")
    else:
        saida = subprocess.run("ps -ef")
        print(saida)
        proc_morrera = int(input("Digite o ID do processo que deseja matar: "))
        kill = subprocess.run(f"kill -9 {proc_morrera}")

def matar_nome(nome_os):
    if nome_os == "Windows":
        saida = subprocess.run("TASKLIST /FO TABLE")
        print(saida)
        proc_morrera = str(input("Digite o ID do processo que deseja matar: "))
        kill = subprocess.run(f"TASKKILL /IM {proc_morrera}")
    else:
        saida = subprocess.run("ps -ef")
        print(saida)
        proc_morrera = str(input("Digite o ID do processo que deseja matar: "))
        kill = subprocess.run(f"pkill -f {proc_morrera}")

def main():
    nome_os = os()
    resposta : int = 0
    resposta = escolha(resposta)      
    if resposta == 1:
        listar_processos(nome_os)
    elif resposta == 2:
        matar_proc(nome_os)
    elif resposta == 3:
        matar_nome(nome_os)


if __name__ == '__main__':
    main()