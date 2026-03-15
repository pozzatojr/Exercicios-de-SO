#Calcule a quantidade de grãos contidos em um tabuleiro de xadrez onde:
#Casa: 1 2 3 4 ... 64
#Qdte: 1 2 4 8 ... N
casa = 1
qdte = 0

for i in range(0, 65):
    casa = i
    qdte = 1 * 2 ** (i - 1)
    print("casa:", casa, "Quantidade:", qdte)
