#language:pt

Funcionalidade: Cadastrar usuario
Como cliente da Ebac Shop
Quero cadastrar o meu usuário
E senha
Para realizar compras na Ebac Shop

Cenário: Usuário cadastrado com sucesso
Dado  que eu acesse a página de cadastro e preencha os "Dados pessoais obrigatórios"
Quando eu incluir um e-mail  com o formato válido "pedro.sousa@ebacshop.com.br"
E a senha "Senha#1234"
Então deve exibir uma mensagem de alerta "Bem-vindo ao EbacShop"

Cenário: Dados pessoais incompletos
Dado  que eu acesse a página de cadastro e não  preencha todos os dados pessoais obrigatórios
Quando eu incluir um e-mail  com o formato válido "pedro.sousa@ebacshop.com.br"
E a senha "Senha#1234"
Então deve exibir uma mensagemd de alerta "Ops, parece que os dados pessoais não foram preenchidos, revise e preencha os campos com *"

Cenário: E-mail inválido
Dado  que eu acesse a página de cadastro e não  preencha todos os dados pessoais obrigatórios
Quando eu incluir um e-mail  com o formato inválido "pedro.sousa@ebacshop"
E a senha "Senha#1234"
Então deve exibir uma mensagem de alerta "Ops, parece que o e-mail informado é inválido, revise e preencha o e-mail novamente"

Esquema do Cenário: Criar múltiplos usários
Quando informar todos os dados obrigatórios, informar um e-mail válido pedro.sousa@ebacshop.com.br  e criar um usuário
E a informar a senha "teste@123"
Então deve exibir a a mensagem de sucesso "Bem-vindo ao EbacShop"

Exemplos: 
|usuario                         |senha      |mensagem                  |
|"pedro.sousa@ebacshop.com.br"   |"teste@123"| "Bem-vindo ao EbacShop"  |
|"maria.santos@ebacshop.com.br"  |"teste@123"| "Bem-vindo ao EbacShop"  |
|"andre.santiago@ebacshop.com.br"|"teste@123"| "Bem-vindo ao EbacShop"  |