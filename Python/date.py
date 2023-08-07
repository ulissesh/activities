def dia (num1):
    diaa = num1
    print(diaa)

def mess (num2):
   if num2 == '1':
    return 'Janeiro'
   elif num2 == '2':
    return'Fevereiro' 
   elif num2 == '3':
    return'Março'
   elif num2 == '4':
    return'Abril'
   elif num2 == '5':
    return'Maio'
   elif num2 == '6':
    return'Junho'
   elif num2 == '7':
    return'Julho'
   elif num2 == '8':
    return'Agosto'
   elif num2 == '9':
    return'Setembro'
   elif num2 == '10':
    return'Outubro'
   elif num2 == '11':
    return'Novembro'
   elif num2 == '12':
    return'Dezembro'   
   else:
    print('Digite um número de mês de 1-12') 

def ano (num3):
    anoo = num3
    print(anoo)

val1 = input('Insira um dia do Mês de 0-31\n')
val2 = input('Insira um Mês de 0-12\n')
val3 = input('Insira um Ano\n')

def datacompleta(dia, mes, ano):
    return dia + " de " + mess(mes) + " de " + ano 

print(datacompleta(val1, val2, val3))


