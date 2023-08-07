s1=int(input("Digite 1 para somar,2 para subtrair\n"));
v1=int(input("Digite o valor1\n"));
v2=int(input("Digite o valor2\n"));

def soma(v1,v2):
    total=v1+v2;
    return total;

def subtracao(v1,v2):
   total=v1-v2;
   return total;

if s1==1:
    total_final= soma(v1,v2);
    print("Total", total_final);
elif s1==2:
    total_final= subtracao(v1,v2);
    print("Total", total_final);
else:
    print("TRY AGAIN");
