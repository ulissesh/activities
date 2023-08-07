print("-----------------")
print("Lista de Compras")
print("-----------------")
mercado = ["arroz",
            "feijão",
            "óleo",
            "açúcar",
            "margarina"]

item = mercado.pop(0) 

while item != "açúcar":
    print("Cadê o açúcar na lista??")
    item = mercado.pop(0)

print("Açucar encontrado!")



