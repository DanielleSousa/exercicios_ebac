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

