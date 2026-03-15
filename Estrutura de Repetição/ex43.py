#Calcule e mostre quantos anos serão necessários para que Ana seja maior que Maria
#sabendo que Ana tem 1,10 m e cresce 3 cm ao ano e Maria tem 1,5 m e cresce 2 cm ao ano
maria = 1.5
ana = 1.1
anos = 0

while maria > ana:
    ana = ana + 0.03
    maria = maria + 0.02
    anos = 1 + anos
print("Em", anos, "anos elas terão", maria)