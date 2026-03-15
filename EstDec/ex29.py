#Receba o tipo de investimento (1 = poupança e 2 = renda fixa) e o valor do investimento.
#Calcule e mostre o valor corrigido em 30 dias sabendo que a poupança = 3% e a renda fixa = 5%.
#Demais tipos não serão considerados.   
invest = int(input("Digite 1 para poupança e 2 para enda fixa:"))
valor = float(input("Valor do investimento:"))
res = 0
#inicio
if invest == 1:
    res = valor * 1.03
elif invest == 2:
    res = valor * 1.05
else:
    print("Digite 1 ou 2") 