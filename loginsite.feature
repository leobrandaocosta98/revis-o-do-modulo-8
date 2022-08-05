            #language: pt

            Funcionalidade: Login do site EBAC SHOP
            Como cliente da EBAC SHOP
            Quero fazer o login autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação de usuário na EBAC SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "leonardo@ebac.com.br"
            E a senha "leonardo@123"
            Então deve ir para tela de "checkout"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "xxxyyyzzz@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem ao cliente "Usuário inválidos"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "leonardo@ebac.com.br"
            E a senha "fjdefhsd43435"
            Então deve exibir uma mensagem ao cliente "Senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir uma <mensagem> ao cliente

            Exemplos:
            | usuario                 | senha           | mensagem            |
            | "leonardo@ebac.com.br"  | "leonardo@123"  | "checkout"          |
            | "xxxyyyzzz@ebac.com.br" | "leonardo@123"  | "Usuário inválidos" |
            | "leonardo@ebac.com.br"  | "fjdefhsd43435" | "Senha inválidos"   |