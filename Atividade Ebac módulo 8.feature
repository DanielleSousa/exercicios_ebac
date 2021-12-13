#language:pt

Funcionalidade: Cadastrar produtos

Como cliente da Ebac Shop
Quero configurar meu produto de acordo com o tamanho que gosto 
E escolher a quantidade
Para depois inserir o tamanho

Cenário: Configuração Válida
Dado que eu acesse a página do produto
Quando eu escolher a configuração do produto e tamanho
E adicionar 8 unidades do produto no carrinho para compra
Então deve exibir a mensagem "Finalizar a compra do produto"

Cenário: Configuração inválida
Dado que eu acesse a página do produto
Quando eu escolher a configuração do produto e tamanho
E adicionar 11 unidades do produto
Então deve exibir uma mensagem de alerta "Quantidade acima do permitida"

Esquema do Cenário: Configurar múltiplos produtos
Quando eu configurar o <produto>
E escolher a <quantidade>
Então deve exibir a <mensagem> de finalizar a compra

Exemplos: 
|produto                |quantidade     |mensagem                         |
|"saia azul, tamanho P" |"1"            |"Finalizar a compra do produto"  |
|"saia azul, tamanho M" |"2"            |"Finalizar a compra do produto"  |
|"saia azul, tamanho G" |"3"            |"Finalizar a compra do produto"  |
|"saia rosa, tamanho P" |"4"            |"Finalizar a compra do produto"  |
|"saia rosa, tamanho M" |"4"            |"Finalizar a compra do produto"  |
|"saia rosa, tamanho G" |"4"            |"Finalizar a compra do produto"  |


Funcionalidade: tela de login

Como cliente do EbacShop
Quero me autenticar
Para finalizar a compra dos produtos

Cenário: Autenticação Válida
Dado que eu acesse clique no botão "Finalizar a compra do produto"
Quando eu digitar o usuário "joao@ebacshop.com.br" 
E a senha "senha@123"
Então deve exibir uma mensagem de boas vindas "Olá, João, como deseja finalizar a compra do seu produto?"

Cenário: Usuário Inexistente
Dado que eu acesse clique no botão "Finalizar a compra do produto"
Quando eu digitar o usuário "xxxju@ebacshop.com.br" 
E a senha "senha@123"
Então deve exibir uma mensagem de alerta "Cadastrado não encontrado"

Cenário: Usuário com senha inválida
Dado  que eu acesse clique no botão "Finalizar a compra do produto"
Quando eu digitar o usuário "joao@ebacshop.com.br" 
E a senha "xxxx1414"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

Esquema do Cenário: Autenticar múltiplos usuários
Quando eu clicar no botão "Finalizar a comprador do produto" e digitar o <usuario>
E a <senha>
Então deve exibir a <mensagem> de sucesso

Exemplos: 
|usuario                 |senha      |mensagem                                                      |
|"joao@ebacshop.com.br"  |"teste@123"| "Olá, João, como deseja finalizar a compra do seu produto?"  |
|"maria@ebacshop.com.br" |"teste@123"| "Olá, Maria,como deseja finalizar a compra do seu produto?"  |
|"jose@ebacshop.com.br"  |"teste@123"| "Olá, Jose, como deseja finalizar a compra do seu produto?"  |

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
Quando informar todos os dados obrigatórios, informar um e-mail válido e criar um <usuario>
E a <senha>
Então deve exibir a <mensagem> de sucesso

Exemplos: 
|usuario                         |senha      |mensagem                  |
|"pedro.sousa@ebacshop.com.br"   |"teste@123"| "Bem-vindo ao EbacShop"  |
|"maria.santos@ebacshop.com.br"  |"teste@123"| "Bem-vindo ao EbacShop"  |
|"andre.santiago@ebacshop.com.br"|"teste@123"| "Bem-vindo ao EbacShop"  |