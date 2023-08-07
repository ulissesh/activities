print("_______FOLHA DE PAGAMENTO_______");

funcionario=input("Digite seu nome \n");
horastrab= int(input("Digite as horas trabalhadas\n"));
valorhr=float(input("Digite o valor das horas trabalhadas\n"));
valorbrt= valorhr * horastrab;
valorvt= valorbrt * 0.08;
valorliq= valorbrt - valorvt;

if valorbrt < 1000:
    v1= valorbrt * 0.10;
    valordesc= v1+valorvt;
    valorliq= valorvt-valordesc;
elif valorbrt < 2000:
    v2= valorbrt * 0.15;
    valordesc= v2+valorvt;
    valorliq= valorbrt - valordesc;
else:
    v3=valorbrt * 0.20
    valordesc= v3 +valorvt;
    valorliq+ valorbrt-valordesc;
    
            
print("\n");

print("___Resultado___");
print("\n");
print("Funcionário:" , funcionario);
print("Salário bruto:", valorbrt);
print("VT", valorvt);
print("INSS: ", valordesc);
print("Valor a receber: ", valorliq);
