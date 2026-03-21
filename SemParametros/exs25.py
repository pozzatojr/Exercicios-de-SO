#25. Receba a hora de início e de final de um jogo (HH,MM), calcular o tempo do jogo em horas e
#minutos, sabendo que o tempo máximo é menor que 24 horas e pode começar num dia e
#terminar noutro.
horai = 0
mini = 0
horaf = 0
minf = 0
tmph = 0
tmpm = 0

def tempo():
    global horai, mini, horaf,  minf, tmph, tmpm
    horai = int(input("Digite a hora inicial do jogo:"))
    mini = int(input("Digite o minuto inicial do jogo:"))
    horaf = int(input("Digite a hora final do jogo:"))
    minf = int(input("Digite o minuto final do jogo:"))
    tmph = 0
    tmpm = 0
    if (minf < mini) and (horaf < horai):
        tmpm = (60 - mini) + minf
        tmph = (24 - horai) + horaf
        print(tmph,":", tmpm) 

    elif (horaf < horai):
        tmph = (24 - horai) + horaf
        tmpm = minf - mini
        print(tmph,":", tmpm) 

    elif (minf < mini):
        tmpm = (60 - mini) + minf
        tmph = (horaf - horai) - 1
        print(tmph,":", tmpm) 

    elif (mini >= 30) and (horaf == horai + 1):
        tmph = 0
        tmpm = (60 - mini) + minf
        print(tmph,":", tmpm) 
    else:
        tmph = horaf - horai
        tmpm = minf - mini
        print(tmph,":", tmpm) 

def main():
    tempo()

if __name__ == "__main__":
    main()