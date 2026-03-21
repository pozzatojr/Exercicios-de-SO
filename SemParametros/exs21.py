#Receba 4 notas bimestrais de um aluno. Calcule e mostre a média aritmética. Mostre a mensagem de acordo com a média:
nota1 = 0
nota2 = 0
nota3 = 0
nota4 = 0
media = 0

def media():
    global nota1, nota2, nota3, nota4, media
    nota1 = float(input("Digite a nota do primeiro aluno:")) #Nota do primeiro aluno
    nota2 = float(input("Digite a segunda nota do aluno:")) #Nota do segundo aluno
    nota3 = float(input("Digite terceira nota do aluno:")) #Nota do terceiro aluno
    nota4 = float(input("Digite a quarta nota do aluno:"))   #Nota do quarto aluno
    media = 0
    media = ((nota1 + nota2 + nota3 + nota4) / 4)
    if (media >= 6):
        print("APROVADO")
    elif (media >= 3):
        print("EXAME")
    else:
        print("REPROVADO")

def main():
    media()

if __name__ == "__main__":
    main()