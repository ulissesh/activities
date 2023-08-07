print("-------------------")
print("Titulo de Eleitor")
print("-------------------")

ativar = True


while ativar:
    idade = int(input("Qual a sua idade? Digite 0 para finalizar o Programa\n"))
    if idade == 0:
        ativar = False
    
    else:
        print("Você tem", idade, "anos!")    
        if idade >=16:
            print("Já tem idade para fazer o Título de Eleitor.")
        else:
            print("Complete 16 Anos para tirar seu Título de Eleitor")

