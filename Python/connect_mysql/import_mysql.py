import mysql.connector;

conexao = mysql.connector.connect(
       host = 'localhost',
       user = 'aluno',
       password = '@riobranco',
       database = 'bdlivros',
       auth_plugin = 'mysql_native_password'
);

cursor=conexao.cursor();
nome = input("Digite o nome do cliente");
idade = int(input("Digite a idade"));
email = input("Digite seu email");

comando = f'insert into tbcliente(nome,idade,email)values("{nome}","{idade}","{email}")';
cursor.execute(comando);
conexao.commit();
print('dados cadastrados com sucesso');
cursor.close();
conexao.close;
