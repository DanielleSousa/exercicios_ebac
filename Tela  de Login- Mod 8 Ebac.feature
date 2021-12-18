#language:pt

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
Quando eu clicar no botão "Finalizar a comprador do produto" e digitar o usuário joao@ebacshop.com.br
E a senha "teste@123"
Então deve exibir a mensagem de sucesso "Olá, João, como deseja finalizar a compra do seu produto?"

Exemplos: 
|usuario                 |senha      |mensagem                                                      |
|"joao@ebacshop.com.br"  |"teste@123"| "Olá, João, como deseja finalizar a compra do seu produto?"  |
|"maria@ebacshop.com.br" |"teste@123"| "Olá, Maria,como deseja finalizar a compra do seu produto?"  |
|"jose@ebacshop.com.br"  |"teste@123"| "Olá, Jose, como deseja finalizar a compra do seu produto?"  |
