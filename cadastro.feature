            #language: pt

            Funcionalidade: Tela de cadastro do site EBAC SHOP
            Como cliente da EBAC SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro do usuário na EBAC SHOP

            Cenário: Cadastro concluído
            Quando eu digitar "Léo","leo@ebac.com","11996211371" e "outro dado"
            Então deve aparecer uma mensagem de "Cadastro efetuado com sucesso"

            Cenário: Cadastro incorreto
            Quando eu digitar "Léo","leo!ebac","11996211371" e "outro dado"
            Então deve aparecer uma mensagem de "Favor preencher os campos corretamente"

            Esquema do Cenário: Autenticar multiplos cadastros
            Quando Quando eu digitar os campos <nome>, <email>, <telefone>, <etc>
            Então deve aparecer a <mensagem>

            Exemplos:
            | nome  | email          | telefone      | etc          | mensagem                                 |
            | "Léo" | "leo@ebac.com" | "11996211371" | "outro dado" | "Cadastro efetuado com sucesso"          |
            | "Léo" | "leo!ebac"     | "11996211371" | "outro dado" | "Favor preencher os campos corretamente" |
            | "  "  | "leo@ebac.com" | "11996211371" | "outro dado" | "Favor preencher os campos corretamente" |
            | "Léo" | "leo@ebac.com" | "  "          | "outro dado" | "Favor preencher os campos corretamente" |
            | "Léo" | "leo@ebac.com" | "11996211371" | "   "        | "Favor preencher os campos corretamente" |
