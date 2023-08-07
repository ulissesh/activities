aluno = {
        'nome' : 'Ulisses',
        'sobrenome' : 'Henrique',
        'nota' : 9,
        'numero' : '27'

}

print(aluno['nota'])

#removerchave
del aluno ['numero']

print(aluno)

#alterarValorDaChave
aluno['nota'] = 4
print(aluno)

if aluno['nota'] > 6:
    print(aluno['nome'], 'passou com a nota', aluno['nota'])
else:
    print(aluno['nome'], 'não passou')
