v1 = float(input("Digite um valor X\n"));
v2 = float(input("Digite um valor Y\n"));
ope = input("Digite um Operador, +, -, *,/ :\n");

def soma (v1,v2):
    total = v1+v2;
    return total;

def subtração (v1,v2):
    total = v1-v2;
    return total;
    
def divisão (v1,v2):
    total = v1/v2;
    return total;

def multiplicação (v1,v2):
    total = v1*v2;
    return total;

if ope == '+':
    total_final = soma(v1,v2);
    print("Total ",total_final);
elif ope == '-':
    total_final = subtração(v1,v2);
    print("Total ",total_final);
elif ope == '/':
    total_final = divisão(v1,v2);
    print("Total ",total_final);
elif ope == '*':
    total_final = multiplicação(v1,v2);
    print("Total: ",total_final);
else:
    print("Digite um Operador correto");

