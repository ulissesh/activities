clientes= ['Daniel','Lucas','Maria','Jorge','Ana'];
idade=['29','33','27','21','19'];
salario=['2.300','1.800','1.789','2.00','980'];

print(clientes[2],idade[2],salario[2]);

clientes.insert(5,'Jasmine');
idade.insert(5,'28');
salario.insert(5,'3.400');

print(clientes[5],idade[5],salario[5]);

clientes= ('Daniel','Lucas','Maria','Jorge','Ana');
idade=('29','33','27','21','19');
salario=('2.300','1.800','1.789','2.00','980');

for x in clientes:
    print(x);
for y in idade:
    print(y);
for z in salario:
    print(z);
