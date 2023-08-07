import mysql.connector;

conexao = mysql.connector.connect(
       host = 'localhost',
       user = 'aluno',
       password = '@riobranco',
       database = 'bdmercado',
       auth_plugin = 'mysql_native_password'
);

print("Sistema de Cadastro - Mercado");
print("Digite 1 ao 5, para acessar as opções do menu");
print("1 para Cadastrar");
print("2 para Consultar");
print("3 para Alterar");
print("4 para Deletar");
print("5 para sair");
op = input("Digite uma opção: ");

def cadastrarProduto():
    print("Codigo consulta");

def consultarProduto():
    print("Codigo consulta");

def alterarProduto():
    print("Codigo Alterar");

def deletarProduto():
    print("Codigo Deletar");

def sairSistema():
    print("Obrigado");

if op == "1":
       cadastrarProduto()
elif op == "2":
       consultarProduto()
elif op == "3":
       alterarProduto()
elif op == "4":
       deletarProoduto()
elif op == "5":
       sairSistema()
else:
    print("Valor digitado errado");

cursor=conexao.cursor();
produto = input("Digite o nome do produto");
valor = float(input("Digite o valor"));
qtd = int(input("Digite a quantidade"));
marca = input("Digite o nome da marca");
estado = input("Digite o estado do produto");
cor = input("Digite a cor do produto");

comando = f'insert into tbprodutos(produto,valor,qtd,marca,estado,cor)values("{produto}","{valor}","{qtd}","{marca}","{estado}","{cor}")';
cursor.execute(comando);
conexao.commit();
print('dados cadastrados com sucesso');
cursor.close();
conexao.close;




