#Receba o número de voltas, a extensão do circuito (em metros) e o tempo de duração
#(minutos). Calcule e mostre a velocidade média em km/h.
#declarar
voltas = 0
dist = 0
dtotal = 0
tmp = 0
vel = 0

def velocidade():
    global voltas, dist, dtotal, tmp, vel
    voltas = int(input("Digite o número de voltas:"))
    dist = int(input("Digite a distancia da pista em metros:"))
    dtotal = voltas * dist / 1000
    tmp = int(input("Digite o tempo em minutos:"))
    vel = 0

    vel = (dtotal / (tmp / 60))
    print(vel, "Km/h")

def main():
    velocidade()

if __name__ == "__main__":
    main()